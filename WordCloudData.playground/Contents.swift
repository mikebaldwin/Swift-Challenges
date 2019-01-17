
import XCTest

class WordCloudDataTests: XCTestCase {
    
    var wordCloudData: WordCloudData!
    
    override func setUp() {
        wordCloudData = WordCloudData()
    }
    
    override func tearDown() {
        // TODO:
    }
    
    func testSplitWords() {
        // TODO: why is this test not running?f
        let words = wordCloudData.splitWords("Big Money!")
        XCTAssertEqual(words.count, 2)
        
        let threeWords = wordCloudData.splitWords("Mind the gap")
        XCTAssertEqual(threeWords.count, 3)
    }
}

class CharacterExtensionsTests: XCTestCase {
    
    func testCharacterIsLetter() {
        let letter = Character("a")
        XCTAssertTrue(letter.isLetter())
    }
    
    func testNumberIsNotLetter() {
        let number = Character("2")
        XCTAssertFalse(number.isLetter())
    }
}

WordCloudDataTests.defaultTestSuite.run()
//CharacterExtensionsTests.defaultTestSuite.run()
