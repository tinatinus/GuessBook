import Array "mo:base/Array";


actor Guestbook {
    stable var messages : [Text] = [];

    public func addMessage(message : Text) : async () {
        messages := Array.append(messages, [message]);
    };

    public query func getMessages() : async [Text] {
        return messages;
    };
};
