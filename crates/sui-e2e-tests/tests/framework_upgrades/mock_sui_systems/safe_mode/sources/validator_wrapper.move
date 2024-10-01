// Copyright (c) Mysten Labs, Inc.
// SPDX-License-Identifier: Apache-2.0

module sui_system::validator_wrapper {
    use sui::versioned::Versioned;

    public struct ValidatorWrapper has store {
        inner: Versioned
    }
}
