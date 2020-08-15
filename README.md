# KDResponderRoute

The idea of the project comes from the [blog](https://casatwy.com/responder_chain_communication.html).

## Usage

1. if you want to send event via responder chain, you need call `kd_sendEventWithName:parameter:` method.

2. if you want to receive event via responder chain, you need override `kd_receiveEventWithName:parameter:` method.And if you want the event to continue to be passed in the chain, you need return `YES` for the method callee.

## Restrict

The classes or the objects cannot work in this way if they are not in the responder chain.

## LICENSE

MIT
