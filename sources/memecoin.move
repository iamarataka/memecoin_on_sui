/*
/// Module: memecoin
module memecoin::memecoin;
*/

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions


module memecoin::wavecoin {
    
    use sui::coin;
    use sui::url::new_unsafe_from_bytes;

    const TOTAL_SUPPLY: u64 = 1_000_000_000_000_000_000;
    const NAME: vector<u8> = b"WAVECOIN";
    const SYMBOL: vector<u8> = b"WC";
    const DESCRIPTION: vector<u8> = b"WaveCoin is a fun, community-driven memecoin on the Sui blockchain. Perfect for tipping, trading, and crypto fun '-' ride the wave and own the vibe.";
    const IMG_BASE_64: vector<u8> = b"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDACgcHiMeGSgjISMtKygwPGRBPDc3PHtYXUlkkYCZlo+AjIqgtObDoKrarYqMyP/L2u71////m8H////6/+b9//j/2wBDASstLTw1PHZBQXb4pYyl+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj/wAARCABAAEADASIAAhEBAxEB/8QAGQAAAgMBAAAAAAAAAAAAAAAAAAQBAwUC/8QAKBAAAgIBAgQGAwEAAAAAAAAAAQIAAxEhMQQTQVESFDJScaFDYdEi/8QAGAEBAQEBAQAAAAAAAAAAAAAAAgMAAQT/xAAbEQEBAQEAAwEAAAAAAAAAAAABAgARAxIhQf/aAAwDAQACEQMRAD8A1oQkMyopZjgDczm2mBIG5A+Yo1lt/pJqr6e4/wAnPl6+q+I92OYWwyJXOgg7EH4hEvL1dF8J7qcToWW0eom2vr7h/Zix2ZTNwkIyuoZTkHYyYscRS0868r+Ovcd2jZOBmJcNrSGO7EsYbeGUnXWwhFXtawkISqdxuZKYaeGVWSdc1CIqrljyvF4hufFHEJKAsMHGonbj1/dov2O80VHk3hfx2dOzRuJcRpSWG6kER0ajMpD0xo44OoxM+q5K6gjthlyCMTQiHF18q7mD0Pv+jF6lfHFpn6auyxrtMFU+zDaEJaZJOG8lW09cV2clmyCVbXTpLvM0+/6lMJOvEU91Z8zJzd22rbSwTOpCjI7zQGgxEOFr5twc+hNv2Y/D6k/DVKaOuJDKrqVYZB3EmE27kLOGsqP+AbE+xKeYoOCcHsRiasCAdwD8iMpNN8Y7K5inQHJ7DWXVcNZbq4NafZj4UDYAfAhM0ux4w0IqooVRgDYSYQg1N//Z";

    public struct WAVECOIN has drop {}

    fun init(witness: WAVECOIN, ctx: &mut TxContext){

        let (mut treasury, metadata) = coin::create_currency(
            witness,
            9,
            SYMBOL,
            NAME,
            DESCRIPTION,
            option::some(new_unsafe_from_bytes(IMG_BASE_64)),
            ctx
        );

        let coin = coin::mint( &mut treasury, TOTAL_SUPPLY, ctx);
        transfer::public_transfer(coin, ctx.sender());

        transfer::public_freeze_object(metadata);
        transfer::public_freeze_object(treasury);

    }
}