# KDResponderRoute

The idea of the project comes from the [blog](https://casatwy.com/responder_chain_communication.html). I only implemente with code.

## Usage

1. if you want to send event via responder chain, you need call `kd_routerEventWithName:parameter:` method.

2. if you want to receive event via responder chain, you need override `kd_routerEventWithName:parameter:` method.And if you want the event to continue to be passed in the chain, you need call `[super kd_routerEventWithName:parameter:]` method.

## Restrict

The classes or the objects cannot work in this way if they are not in the responder chain.

## LICENSE

MIT
