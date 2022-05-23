%lang starknet

@storage_var
func state() -> (s : State):
end

struct UserMeta:
    member index : felt #: int
    member hash : felt
    member position : Position
    # test empty new line after a single line comment

end

@view
func get_user_by_index {
    syscall_ptr : felt*, pedersen_ptr : HashBuiltin*,
    range_check_ptr
    } (index : felt, position : Position) -> (user : User):
    #: (index : int, position : Position) -> (user : User)
    let (hash) = users_index_to_hash.read(index)
    let (user) = get_user_by_hash(hash)
    return (user = user)
end

# function with no type hint
@view
func get_user_by_index {
    syscall_ptr : felt*, pedersen_ptr : HashBuiltin*,
    range_check_ptr
    } (index : felt, position : Position) -> (user : User):
    let (hash) = users_index_to_hash.read(index)
    let (user) = get_user_by_hash(hash)
    return (user = user)
end # test no new line at the end