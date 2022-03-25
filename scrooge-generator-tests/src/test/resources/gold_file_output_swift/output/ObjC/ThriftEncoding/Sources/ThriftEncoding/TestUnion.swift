//
// Autogenerated by Scrooge
//
// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//
import Foundation
import TwitterApacheThrift
@objc(TESTTestUnion)
@objcMembers
public class TestUnion: NSObject, ThriftCodable {
    public enum Union: ThriftCodable, Hashable {
        case anInt(Int32)
        case aString(String)
        case aSet(Set<String>)
        case day(Day)
        enum CodingKeys: Int, CodingKey {
            case anInt = 1
            case aString = 2
            case aSet = 3
            case day = 4
        }
        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            if let decodedClass = try container.decodeIfPresent(Int32.self, forKey: .anInt) {
                 self = .anInt(decodedClass)
            } else if let decodedClass = try container.decodeIfPresent(String.self, forKey: .aString) {
                 self = .aString(decodedClass)
            } else if let decodedClass = try container.decodeIfPresent(Set<String>.self, forKey: .aSet) {
                 self = .aSet(decodedClass)
            } else if let decodedClass = try container.decodeIfPresent(Day.self, forKey: .day) {
                 self = .day(decodedClass)
            } else {
                 throw DecodingError.valueNotFound(TestUnion.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "TestUnion not decodable"))
            }
        }
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            switch self {
            case .anInt(let codedClass):
               try container.encode(codedClass, forKey: .anInt)
            case .aString(let codedClass):
               try container.encode(codedClass, forKey: .aString)
            case .aSet(let codedClass):
               try container.encode(codedClass, forKey: .aSet)
            case .day(let codedClass):
               try container.encode(codedClass, forKey: .day)
            }
        }
    }
    public let value: Union
    public init(anInt value: Int32) {
        self.value = .anInt(value)
    }
    public init(aString value: String) {
        self.value = .aString(value)
    }
    public init(aSet value: Set<String>) {
        self.value = .aSet(value)
    }
    public init(day value: Day) {
        self.value = .day(value)
    }
    required public init(from decoder: Decoder) throws {
        self.value = try Union(from: decoder)
    }
    public func encode(to encoder: Encoder) throws {
        try self.value.encode(to: encoder)
    }
    public override var hash: Int {
        var hasher = Hasher()
        hasher.combine(self.value)
        return hasher.finalize()
    }
    public override func isEqual(_ object: Any?) -> Bool {
        guard let other = object as? Self else {
            return false
        }
        return self.value == other.value
    }
    public var anInt: Int32? {
        guard case .anInt(let value) = self.value else {
            return nil
        }
        return value
    }
    public var aString: String? {
        guard case .aString(let value) = self.value else {
            return nil
        }
        return value
    }
    public var aSet: Set<String>? {
        guard case .aSet(let value) = self.value else {
            return nil
        }
        return value
    }
    public var day: Day? {
        guard case .day(let value) = self.value else {
            return nil
        }
        return value
    }
}