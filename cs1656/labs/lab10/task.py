from neo4j import GraphDatabase, basic_auth
import time
import datetime

def fromTimestamp(timestamp):
    if isinstance(timestamp, str):
        timestamp = int(timestamp)
    return (datetime.datetime(1970, 1, 1) + datetime.timedelta(milliseconds=timestamp)).strftime("%m/%d/%Y %H:%M:%S")

def toTimestamp(dateval):
    return time.mktime(datetime.datetime.strptime(dateval, "%m/%d/%Y").timetuple())*1000

class Task(object):
    def __init__(self, password):
        self.driver = GraphDatabase.driver("bolt://localhost", auth=("neo4j", password), encrypted=False)
        self.session = self.driver.session()
        self.transaction = self.session.begin_transaction()

    def q1(self):
        result = self.transaction.run("""
            MATCH (tom:Actor {name: 'Tom Hanks'}) RETURN tom.name, tom.birthday, tom.birthplace
        """)
        return [(r[0], fromTimestamp(r[1]), r[2]) for r in result]

    def q2(self):
        result = self.transaction.run("""
            MATCH (avatar:Movie {title: 'Avatar'}) RETURN avatar.studio, avatar.releaseDate
        """)
        return [(r[0], fromTimestamp(r[1])) for r in result]

    def q3(self):
        result = self.transaction.run("""
            MATCH (m:Movie) WHERE toFloat(m.releaseDate) > 631170000000 AND toFloat(m.releaseDate) < 946616400000 RETURN m.title
        """)
        return [r[0] for r in result]

    def q4(self):
        result = self.transaction.run("""
            MATCH (a:Actor {name: 'Tom Hanks'})-[:ACTS_IN]->(m:Movie) RETURN DISTINCT m.title, m.studio, m.releaseDate
        """)
        return [(r[0], r[1], fromTimestamp(r[2])) for r in result]

    def q5(self):
        result = self.transaction.run("""
            MATCH (d:Director)-[:DIRECTED]->(m:Movie {title: 'Avatar'}) RETURN d.name
        """)
        return [(r[0]) for r in result]

    # Can have duplicates but this is the correct answer?
    def q6(self):
        result = self.transaction.run("""
            MATCH (a:Actor {name:"Tom Hanks"})-[:ACTS_IN]->(m)<-[:ACTS_IN]-(b) RETURN b.name
        """)
        return [(r[0]) for r in result]

    def q7(self):
        result = self.transaction.run("""
            MATCH (p:Person)-[relatedTo]-(:Movie {title: "Avatar"}) RETURN p.name, type(relatedTo)
        """)
        return [(r[0], r[1]) for r in result]

    def q8(self):
        result = self.transaction.run("""
            MATCH (a:Actor {name: 'Tom Hanks'})-[:ACTS_IN]->(m)<-[:ACTS_IN]-(p2)-[:ACTS_IN]->(m2)<-[:ACTS_IN]-(p3)
            WHERE p3<>a AND NOT (a)-[:ACTS_IN]->(m2)<-[:ACTS_IN]-(p3) RETURN DISTINCT p3.name
        """)
        return [(r[0]) for r in result]

    def q9(self):
        result = self.transaction.run("""
            MATCH (p:Person {name:"Tom Hanks"})-[:ACTS_IN]->(m)<-[:ACTS_IN]-(a),
            (a)-[:ACTS_IN]->(m2)<-[:ACTS_IN]-(p2:Person {name:"Tom Cruise"})
            RETURN DISTINCT a.name
        """)
        return [(r[0]) for r in result]

if __name__ == "__main__":
    sol = Task("neo4jpass")
    print("---------- Q1 ----------")
    print(sol.q1())
    print("---------- Q2 ----------")
    print(sol.q2())
    print("---------- Q3 ----------")
    print(sol.q3())
    print("---------- Q4 ----------")
    print(sol.q4())
    print("---------- Q5 ----------")
    print(sol.q5())
    print("---------- Q6 ----------")
    print(sol.q6())
    print("---------- Q7 ----------")
    print(sol.q7())
    print("---------- Q8 ----------")
    print(sol.q8())
    print("---------- Q9 ----------")
    print(sol.q9())
    sol.transaction.close()
    sol.session.close()
    sol.driver.close()

