//# init --edition 2024.beta

//# publish
module 0x42::m {

    public enum Threes has drop {
        One(u64),
        Two(u64, u64),
        Three(u64, u64, u64)
    }

    public fun t0(): u64 {
        match (Threes::One(0)) {
            Threes::Three(x, _, _) => x,
            Threes::One(x) => x,
            Threes::Two(_, _) => 1,
        }
    }

}

//# run
module 0x43::main {
    use 0x42::m;
    fun main() {
        assert!(m::t0() == 0);
    }
}
