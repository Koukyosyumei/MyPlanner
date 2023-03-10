In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h: In member function ‘virtual void TraversePDDLDomain::visit_domain_def(DomainDef*)’:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:55:19: error: ‘class Type’ has no member named ‘accept’
   55 |                 t.accept(this);
      |                   ^~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:104:77: error: no matching function for call to ‘Domain::Domain(std::string&, std::unordered_map<std::__cxx11::basic_string<char>, Type>&, std::unordered_map<std::__cxx11::basic_string<char>, Predicate>&, std::unordered_map<std::__cxx11::basic_string<char>, Action>&, std::unordered_map<std::__cxx11::basic_string<char>, Type>&)’
  104 |             new Domain(node->name, _types, _predicates, _actions, _constants);
      |                                                                             ^
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:83:5: note: candidate: ‘Domain::Domain(std::string, std::unordered_map<std::__cxx11::basic_string<char>, Type>, std::vector<Predicate>, std::vector<Action>, std::unordered_map<std::__cxx11::basic_string<char>, Type>)’
   83 |     Domain(string name_, unordered_map<string, Type> types_,
      |     ^~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:84:30: note:   no known conversion for argument 3 from ‘std::unordered_map<std::__cxx11::basic_string<char>, Predicate>’ to ‘std::vector<Predicate>’
   84 |            vector<Predicate> predicates_, vector<Action> actions_,
      |            ~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:81:7: note: candidate: ‘Domain::Domain(const Domain&)’
   81 | class Domain {
      |       ^~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:81:7: note:   candidate expects 1 argument, 5 provided
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:81:7: note: candidate: ‘Domain::Domain(Domain&&)’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:81:7: note:   candidate expects 1 argument, 5 provided
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h: In constructor ‘TraversePDDLProblem::TraversePDDLProblem(Domain&)’:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:356:57: error: no matching function for call to ‘Problem::Problem()’
  356 |     TraversePDDLProblem(Domain& domain) : _domain(domain) {}
      |                                                         ^
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:115:5: note: candidate: ‘Problem::Problem(std::string, Domain, std::unordered_map<std::__cxx11::basic_string<char>, Type>, std::vector<Predicate>, std::vector<Predicate>)’
  115 |     Problem(std::string name, Domain domain,
      |     ^~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:115:5: note:   candidate expects 5 arguments, 0 provided
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:113:7: note: candidate: ‘Problem::Problem(const Problem&)’
  113 | class Problem {
      |       ^~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:113:7: note:   candidate expects 1 argument, 0 provided
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:113:7: note: candidate: ‘Problem::Problem(Problem&&)’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:113:7: note:   candidate expects 1 argument, 0 provided
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:356:57: error: use of deleted function ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::unordered_map() [with _Key = PredicateInstance; _Tp = Predicate; _Hash = std::hash<PredicateInstance>; _Pred = std::equal_to<PredicateInstance>; _Alloc = std::allocator<std::pair<const PredicateInstance, Predicate> >]’
  356 |     TraversePDDLProblem(Domain& domain) : _domain(domain) {}
      |                                                         ^
In file included from /usr/include/c++/11/unordered_map:47,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unordered_map.h:141:7: note: ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::unordered_map() [with _Key = PredicateInstance; _Tp = Predicate; _Hash = std::hash<PredicateInstance>; _Pred = std::equal_to<PredicateInstance>; _Alloc = std::allocator<std::pair<const PredicateInstance, Predicate> >]’ is implicitly deleted because the default definition would be ill-formed:
  141 |       unordered_map() = default;
      |       ^~~~~~~~~~~~~
/usr/include/c++/11/bits/unordered_map.h:141:7: error: use of deleted function ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_Hashtable() [with _Key = PredicateInstance; _Value = std::pair<const PredicateInstance, Predicate>; _Alloc = std::allocator<std::pair<const PredicateInstance, Predicate> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<PredicateInstance>; _Hash = std::hash<PredicateInstance>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’
In file included from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable.h:528:7: note: ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_Hashtable() [with _Key = PredicateInstance; _Value = std::pair<const PredicateInstance, Predicate>; _Alloc = std::allocator<std::pair<const PredicateInstance, Predicate> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<PredicateInstance>; _Hash = std::hash<PredicateInstance>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’ is implicitly deleted because the default definition would be ill-formed:
  528 |       _Hashtable() = default;
      |       ^~~~~~~~~~
/usr/include/c++/11/bits/hashtable.h:528:7: error: use of deleted function ‘std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::_Hashtable_base() [with _Key = PredicateInstance; _Value = std::pair<const PredicateInstance, Predicate>; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<PredicateInstance>; _Hash = std::hash<PredicateInstance>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’
In file included from /usr/include/c++/11/bits/hashtable.h:35,
                 from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable_policy.h:1604:7: note: ‘std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::_Hashtable_base() [with _Key = PredicateInstance; _Value = std::pair<const PredicateInstance, Predicate>; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<PredicateInstance>; _Hash = std::hash<PredicateInstance>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’ is implicitly deleted because the default definition would be ill-formed:
 1604 |       _Hashtable_base() = default;
      |       ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1604:7: error: use of deleted function ‘std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::_Hash_code_base() [with _Key = PredicateInstance; _Value = std::pair<const PredicateInstance, Predicate>; _ExtractKey = std::__detail::_Select1st; _Hash = std::hash<PredicateInstance>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; bool __cache_hash_code = true]’
/usr/include/c++/11/bits/hashtable_policy.h: In instantiation of ‘std::__detail::_Hashtable_ebo_helper<_Nm, _Tp, true>::_Hashtable_ebo_helper() [with int _Nm = 1; _Tp = std::hash<PredicateInstance>]’:
/usr/include/c++/11/bits/hashtable_policy.h:1210:7:   required from here
/usr/include/c++/11/bits/hashtable_policy.h:1127:49: error: use of deleted function ‘std::hash<PredicateInstance>::hash()’
 1127 |       _Hashtable_ebo_helper() noexcept(noexcept(_Tp())) : _Tp() { }
      |                                                 ^~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:39,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/functional_hash.h:102:12: note: ‘std::hash<PredicateInstance>::hash()’ is implicitly deleted because the default definition would be ill-formed:
  102 |     struct hash : __hash_enum<_Tp>
      |            ^~~~
/usr/include/c++/11/bits/functional_hash.h:102:12: error: no matching function for call to ‘std::__hash_enum<PredicateInstance, false>::__hash_enum()’
/usr/include/c++/11/bits/functional_hash.h:83:7: note: candidate: ‘std::__hash_enum<_Tp, <anonymous> >::__hash_enum(std::__hash_enum<_Tp, <anonymous> >&&) [with _Tp = PredicateInstance; bool <anonymous> = false]’
   83 |       __hash_enum(__hash_enum&&);
      |       ^~~~~~~~~~~
/usr/include/c++/11/bits/functional_hash.h:83:7: note:   candidate expects 1 argument, 0 provided
/usr/include/c++/11/bits/functional_hash.h:102:12: error: ‘std::__hash_enum<_Tp, <anonymous> >::~__hash_enum() [with _Tp = PredicateInstance; bool <anonymous> = false]’ is private within this context
  102 |     struct hash : __hash_enum<_Tp>
      |            ^~~~
/usr/include/c++/11/bits/functional_hash.h:84:7: note: declared private here
   84 |       ~__hash_enum();
      |       ^
In file included from /usr/include/c++/11/bits/hashtable.h:35,
                 from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable_policy.h:1210:7: note: ‘std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::_Hash_code_base() [with _Key = PredicateInstance; _Value = std::pair<const PredicateInstance, Predicate>; _ExtractKey = std::__detail::_Select1st; _Hash = std::hash<PredicateInstance>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; bool __cache_hash_code = true]’ is implicitly deleted because the default definition would be ill-formed:
 1210 |       _Hash_code_base() = default;
      |       ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1210:7: error: use of deleted function ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<PredicateInstance>, true>::~_Hashtable_ebo_helper()’
/usr/include/c++/11/bits/hashtable_policy.h:1124:12: note: ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<PredicateInstance>, true>::~_Hashtable_ebo_helper()’ is implicitly deleted because the default definition would be ill-formed:
 1124 |     struct _Hashtable_ebo_helper<_Nm, _Tp, true>
      |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1124:12: error: use of deleted function ‘std::hash<PredicateInstance>::~hash()’
In file included from /usr/include/c++/11/bits/unique_ptr.h:39,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/functional_hash.h:102:12: note: ‘std::hash<PredicateInstance>::~hash()’ is implicitly deleted because the default definition would be ill-formed:
  102 |     struct hash : __hash_enum<_Tp>
      |            ^~~~
/usr/include/c++/11/bits/functional_hash.h:102:12: error: ‘std::__hash_enum<_Tp, <anonymous> >::~__hash_enum() [with _Tp = PredicateInstance; bool <anonymous> = false]’ is private within this context
/usr/include/c++/11/bits/functional_hash.h:84:7: note: declared private here
   84 |       ~__hash_enum();
      |       ^
In file included from /usr/include/c++/11/bits/hashtable.h:35,
                 from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable_policy.h:1604:7: error: use of deleted function ‘std::__detail::_Hash_code_base<PredicateInstance, std::pair<const PredicateInstance, Predicate>, std::__detail::_Select1st, std::hash<PredicateInstance>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’
 1604 |       _Hashtable_base() = default;
      |       ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1188:12: note: ‘std::__detail::_Hash_code_base<PredicateInstance, std::pair<const PredicateInstance, Predicate>, std::__detail::_Select1st, std::hash<PredicateInstance>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’ is implicitly deleted because the default definition would be ill-formed:
 1188 |     struct _Hash_code_base
      |            ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1188:12: error: use of deleted function ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<PredicateInstance>, true>::~_Hashtable_ebo_helper()’
In file included from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable.h:528:7: error: use of deleted function ‘std::__detail::_Hashtable_base<PredicateInstance, std::pair<const PredicateInstance, Predicate>, std::__detail::_Select1st, std::equal_to<PredicateInstance>, std::hash<PredicateInstance>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’
  528 |       _Hashtable() = default;
      |       ^~~~~~~~~~
In file included from /usr/include/c++/11/bits/hashtable.h:35,
                 from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable_policy.h:1561:12: note: ‘std::__detail::_Hashtable_base<PredicateInstance, std::pair<const PredicateInstance, Predicate>, std::__detail::_Select1st, std::equal_to<PredicateInstance>, std::hash<PredicateInstance>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’ is implicitly deleted because the default definition would be ill-formed:
 1561 |     struct _Hashtable_base
      |            ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1561:12: error: use of deleted function ‘std::__detail::_Hash_code_base<PredicateInstance, std::pair<const PredicateInstance, Predicate>, std::__detail::_Select1st, std::hash<PredicateInstance>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’
In file included from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable.h:528:7: error: use of deleted function ‘constexpr std::_Enable_default_constructor<false, _Tag>::_Enable_default_constructor() [with _Tag = std::__detail::_Hash_node_base]’
  528 |       _Hashtable() = default;
      |       ^~~~~~~~~~
In file included from /usr/include/c++/11/optional:41,
                 from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/enable_special_members.h:113:15: note: declared here
  113 |     constexpr _Enable_default_constructor() noexcept = delete;
      |               ^~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:356:57: error: use of deleted function ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::unordered_map() [with _Key = InitStmt; _Tp = std::vector<Predicate>; _Hash = std::hash<InitStmt>; _Pred = std::equal_to<InitStmt>; _Alloc = std::allocator<std::pair<const InitStmt, std::vector<Predicate> > >]’
  356 |     TraversePDDLProblem(Domain& domain) : _domain(domain) {}
      |                                                         ^
In file included from /usr/include/c++/11/unordered_map:47,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unordered_map.h:141:7: note: ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::unordered_map() [with _Key = InitStmt; _Tp = std::vector<Predicate>; _Hash = std::hash<InitStmt>; _Pred = std::equal_to<InitStmt>; _Alloc = std::allocator<std::pair<const InitStmt, std::vector<Predicate> > >]’ is implicitly deleted because the default definition would be ill-formed:
  141 |       unordered_map() = default;
      |       ^~~~~~~~~~~~~
/usr/include/c++/11/bits/unordered_map.h:141:7: error: use of deleted function ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_Hashtable() [with _Key = InitStmt; _Value = std::pair<const InitStmt, std::vector<Predicate> >; _Alloc = std::allocator<std::pair<const InitStmt, std::vector<Predicate> > >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<InitStmt>; _Hash = std::hash<InitStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’
In file included from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable.h:528:7: note: ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_Hashtable() [with _Key = InitStmt; _Value = std::pair<const InitStmt, std::vector<Predicate> >; _Alloc = std::allocator<std::pair<const InitStmt, std::vector<Predicate> > >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<InitStmt>; _Hash = std::hash<InitStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’ is implicitly deleted because the default definition would be ill-formed:
  528 |       _Hashtable() = default;
      |       ^~~~~~~~~~
/usr/include/c++/11/bits/hashtable.h:528:7: error: use of deleted function ‘std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::_Hashtable_base() [with _Key = InitStmt; _Value = std::pair<const InitStmt, std::vector<Predicate> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<InitStmt>; _Hash = std::hash<InitStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’
In file included from /usr/include/c++/11/bits/hashtable.h:35,
                 from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable_policy.h:1604:7: note: ‘std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::_Hashtable_base() [with _Key = InitStmt; _Value = std::pair<const InitStmt, std::vector<Predicate> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<InitStmt>; _Hash = std::hash<InitStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’ is implicitly deleted because the default definition would be ill-formed:
 1604 |       _Hashtable_base() = default;
      |       ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1604:7: error: use of deleted function ‘std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::_Hash_code_base() [with _Key = InitStmt; _Value = std::pair<const InitStmt, std::vector<Predicate> >; _ExtractKey = std::__detail::_Select1st; _Hash = std::hash<InitStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; bool __cache_hash_code = true]’
/usr/include/c++/11/bits/hashtable_policy.h: In instantiation of ‘std::__detail::_Hashtable_ebo_helper<_Nm, _Tp, true>::_Hashtable_ebo_helper() [with int _Nm = 1; _Tp = std::hash<InitStmt>]’:
/usr/include/c++/11/bits/hashtable_policy.h:1210:7:   required from here
/usr/include/c++/11/bits/hashtable_policy.h:1127:49: error: use of deleted function ‘std::hash<InitStmt>::hash()’
 1127 |       _Hashtable_ebo_helper() noexcept(noexcept(_Tp())) : _Tp() { }
      |                                                 ^~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:39,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/functional_hash.h:102:12: note: ‘std::hash<InitStmt>::hash()’ is implicitly deleted because the default definition would be ill-formed:
  102 |     struct hash : __hash_enum<_Tp>
      |            ^~~~
/usr/include/c++/11/bits/functional_hash.h:102:12: error: no matching function for call to ‘std::__hash_enum<InitStmt, false>::__hash_enum()’
/usr/include/c++/11/bits/functional_hash.h:83:7: note: candidate: ‘std::__hash_enum<_Tp, <anonymous> >::__hash_enum(std::__hash_enum<_Tp, <anonymous> >&&) [with _Tp = InitStmt; bool <anonymous> = false]’
   83 |       __hash_enum(__hash_enum&&);
      |       ^~~~~~~~~~~
/usr/include/c++/11/bits/functional_hash.h:83:7: note:   candidate expects 1 argument, 0 provided
/usr/include/c++/11/bits/functional_hash.h:102:12: error: ‘std::__hash_enum<_Tp, <anonymous> >::~__hash_enum() [with _Tp = InitStmt; bool <anonymous> = false]’ is private within this context
  102 |     struct hash : __hash_enum<_Tp>
      |            ^~~~
/usr/include/c++/11/bits/functional_hash.h:84:7: note: declared private here
   84 |       ~__hash_enum();
      |       ^
In file included from /usr/include/c++/11/bits/hashtable.h:35,
                 from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable_policy.h:1210:7: note: ‘std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::_Hash_code_base() [with _Key = InitStmt; _Value = std::pair<const InitStmt, std::vector<Predicate> >; _ExtractKey = std::__detail::_Select1st; _Hash = std::hash<InitStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; bool __cache_hash_code = true]’ is implicitly deleted because the default definition would be ill-formed:
 1210 |       _Hash_code_base() = default;
      |       ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1210:7: error: use of deleted function ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<InitStmt>, true>::~_Hashtable_ebo_helper()’
/usr/include/c++/11/bits/hashtable_policy.h:1124:12: note: ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<InitStmt>, true>::~_Hashtable_ebo_helper()’ is implicitly deleted because the default definition would be ill-formed:
 1124 |     struct _Hashtable_ebo_helper<_Nm, _Tp, true>
      |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1124:12: error: use of deleted function ‘std::hash<InitStmt>::~hash()’
In file included from /usr/include/c++/11/bits/unique_ptr.h:39,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/functional_hash.h:102:12: note: ‘std::hash<InitStmt>::~hash()’ is implicitly deleted because the default definition would be ill-formed:
  102 |     struct hash : __hash_enum<_Tp>
      |            ^~~~
/usr/include/c++/11/bits/functional_hash.h:102:12: error: ‘std::__hash_enum<_Tp, <anonymous> >::~__hash_enum() [with _Tp = InitStmt; bool <anonymous> = false]’ is private within this context
/usr/include/c++/11/bits/functional_hash.h:84:7: note: declared private here
   84 |       ~__hash_enum();
      |       ^
In file included from /usr/include/c++/11/bits/hashtable.h:35,
                 from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable_policy.h:1604:7: error: use of deleted function ‘std::__detail::_Hash_code_base<InitStmt, std::pair<const InitStmt, std::vector<Predicate> >, std::__detail::_Select1st, std::hash<InitStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’
 1604 |       _Hashtable_base() = default;
      |       ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1188:12: note: ‘std::__detail::_Hash_code_base<InitStmt, std::pair<const InitStmt, std::vector<Predicate> >, std::__detail::_Select1st, std::hash<InitStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’ is implicitly deleted because the default definition would be ill-formed:
 1188 |     struct _Hash_code_base
      |            ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1188:12: error: use of deleted function ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<InitStmt>, true>::~_Hashtable_ebo_helper()’
In file included from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable.h:528:7: error: use of deleted function ‘std::__detail::_Hashtable_base<InitStmt, std::pair<const InitStmt, std::vector<Predicate> >, std::__detail::_Select1st, std::equal_to<InitStmt>, std::hash<InitStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’
  528 |       _Hashtable() = default;
      |       ^~~~~~~~~~
In file included from /usr/include/c++/11/bits/hashtable.h:35,
                 from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable_policy.h:1561:12: note: ‘std::__detail::_Hashtable_base<InitStmt, std::pair<const InitStmt, std::vector<Predicate> >, std::__detail::_Select1st, std::equal_to<InitStmt>, std::hash<InitStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’ is implicitly deleted because the default definition would be ill-formed:
 1561 |     struct _Hashtable_base
      |            ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1561:12: error: use of deleted function ‘std::__detail::_Hash_code_base<InitStmt, std::pair<const InitStmt, std::vector<Predicate> >, std::__detail::_Select1st, std::hash<InitStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’
In file included from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable.h:528:7: error: use of deleted function ‘constexpr std::_Enable_default_constructor<false, _Tag>::_Enable_default_constructor() [with _Tag = std::__detail::_Hash_node_base]’
  528 |       _Hashtable() = default;
      |       ^~~~~~~~~~
In file included from /usr/include/c++/11/optional:41,
                 from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/enable_special_members.h:113:15: note: declared here
  113 |     constexpr _Enable_default_constructor() noexcept = delete;
      |               ^~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:356:57: error: use of deleted function ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::unordered_map() [with _Key = GoalStmt; _Tp = std::vector<Predicate>; _Hash = std::hash<GoalStmt>; _Pred = std::equal_to<GoalStmt>; _Alloc = std::allocator<std::pair<const GoalStmt, std::vector<Predicate> > >]’
  356 |     TraversePDDLProblem(Domain& domain) : _domain(domain) {}
      |                                                         ^
In file included from /usr/include/c++/11/unordered_map:47,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unordered_map.h:141:7: note: ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::unordered_map() [with _Key = GoalStmt; _Tp = std::vector<Predicate>; _Hash = std::hash<GoalStmt>; _Pred = std::equal_to<GoalStmt>; _Alloc = std::allocator<std::pair<const GoalStmt, std::vector<Predicate> > >]’ is implicitly deleted because the default definition would be ill-formed:
  141 |       unordered_map() = default;
      |       ^~~~~~~~~~~~~
/usr/include/c++/11/bits/unordered_map.h:141:7: error: use of deleted function ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_Hashtable() [with _Key = GoalStmt; _Value = std::pair<const GoalStmt, std::vector<Predicate> >; _Alloc = std::allocator<std::pair<const GoalStmt, std::vector<Predicate> > >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<GoalStmt>; _Hash = std::hash<GoalStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’
In file included from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable.h:528:7: note: ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_Hashtable() [with _Key = GoalStmt; _Value = std::pair<const GoalStmt, std::vector<Predicate> >; _Alloc = std::allocator<std::pair<const GoalStmt, std::vector<Predicate> > >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<GoalStmt>; _Hash = std::hash<GoalStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’ is implicitly deleted because the default definition would be ill-formed:
  528 |       _Hashtable() = default;
      |       ^~~~~~~~~~
/usr/include/c++/11/bits/hashtable.h:528:7: error: use of deleted function ‘std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::_Hashtable_base() [with _Key = GoalStmt; _Value = std::pair<const GoalStmt, std::vector<Predicate> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<GoalStmt>; _Hash = std::hash<GoalStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’
In file included from /usr/include/c++/11/bits/hashtable.h:35,
                 from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable_policy.h:1604:7: note: ‘std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::_Hashtable_base() [with _Key = GoalStmt; _Value = std::pair<const GoalStmt, std::vector<Predicate> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<GoalStmt>; _Hash = std::hash<GoalStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’ is implicitly deleted because the default definition would be ill-formed:
 1604 |       _Hashtable_base() = default;
      |       ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1604:7: error: use of deleted function ‘std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::_Hash_code_base() [with _Key = GoalStmt; _Value = std::pair<const GoalStmt, std::vector<Predicate> >; _ExtractKey = std::__detail::_Select1st; _Hash = std::hash<GoalStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; bool __cache_hash_code = true]’
/usr/include/c++/11/bits/hashtable_policy.h: In instantiation of ‘std::__detail::_Hashtable_ebo_helper<_Nm, _Tp, true>::_Hashtable_ebo_helper() [with int _Nm = 1; _Tp = std::hash<GoalStmt>]’:
/usr/include/c++/11/bits/hashtable_policy.h:1210:7:   required from here
/usr/include/c++/11/bits/hashtable_policy.h:1127:49: error: use of deleted function ‘std::hash<GoalStmt>::hash()’
 1127 |       _Hashtable_ebo_helper() noexcept(noexcept(_Tp())) : _Tp() { }
      |                                                 ^~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:39,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/functional_hash.h:102:12: note: ‘std::hash<GoalStmt>::hash()’ is implicitly deleted because the default definition would be ill-formed:
  102 |     struct hash : __hash_enum<_Tp>
      |            ^~~~
/usr/include/c++/11/bits/functional_hash.h:102:12: error: no matching function for call to ‘std::__hash_enum<GoalStmt, false>::__hash_enum()’
/usr/include/c++/11/bits/functional_hash.h:83:7: note: candidate: ‘std::__hash_enum<_Tp, <anonymous> >::__hash_enum(std::__hash_enum<_Tp, <anonymous> >&&) [with _Tp = GoalStmt; bool <anonymous> = false]’
   83 |       __hash_enum(__hash_enum&&);
      |       ^~~~~~~~~~~
/usr/include/c++/11/bits/functional_hash.h:83:7: note:   candidate expects 1 argument, 0 provided
/usr/include/c++/11/bits/functional_hash.h:102:12: error: ‘std::__hash_enum<_Tp, <anonymous> >::~__hash_enum() [with _Tp = GoalStmt; bool <anonymous> = false]’ is private within this context
  102 |     struct hash : __hash_enum<_Tp>
      |            ^~~~
/usr/include/c++/11/bits/functional_hash.h:84:7: note: declared private here
   84 |       ~__hash_enum();
      |       ^
In file included from /usr/include/c++/11/bits/hashtable.h:35,
                 from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable_policy.h:1210:7: note: ‘std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::_Hash_code_base() [with _Key = GoalStmt; _Value = std::pair<const GoalStmt, std::vector<Predicate> >; _ExtractKey = std::__detail::_Select1st; _Hash = std::hash<GoalStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; bool __cache_hash_code = true]’ is implicitly deleted because the default definition would be ill-formed:
 1210 |       _Hash_code_base() = default;
      |       ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1210:7: error: use of deleted function ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<GoalStmt>, true>::~_Hashtable_ebo_helper()’
/usr/include/c++/11/bits/hashtable_policy.h:1124:12: note: ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<GoalStmt>, true>::~_Hashtable_ebo_helper()’ is implicitly deleted because the default definition would be ill-formed:
 1124 |     struct _Hashtable_ebo_helper<_Nm, _Tp, true>
      |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1124:12: error: use of deleted function ‘std::hash<GoalStmt>::~hash()’
In file included from /usr/include/c++/11/bits/unique_ptr.h:39,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/functional_hash.h:102:12: note: ‘std::hash<GoalStmt>::~hash()’ is implicitly deleted because the default definition would be ill-formed:
  102 |     struct hash : __hash_enum<_Tp>
      |            ^~~~
/usr/include/c++/11/bits/functional_hash.h:102:12: error: ‘std::__hash_enum<_Tp, <anonymous> >::~__hash_enum() [with _Tp = GoalStmt; bool <anonymous> = false]’ is private within this context
/usr/include/c++/11/bits/functional_hash.h:84:7: note: declared private here
   84 |       ~__hash_enum();
      |       ^
In file included from /usr/include/c++/11/bits/hashtable.h:35,
                 from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable_policy.h:1604:7: error: use of deleted function ‘std::__detail::_Hash_code_base<GoalStmt, std::pair<const GoalStmt, std::vector<Predicate> >, std::__detail::_Select1st, std::hash<GoalStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’
 1604 |       _Hashtable_base() = default;
      |       ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1188:12: note: ‘std::__detail::_Hash_code_base<GoalStmt, std::pair<const GoalStmt, std::vector<Predicate> >, std::__detail::_Select1st, std::hash<GoalStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’ is implicitly deleted because the default definition would be ill-formed:
 1188 |     struct _Hash_code_base
      |            ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1188:12: error: use of deleted function ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<GoalStmt>, true>::~_Hashtable_ebo_helper()’
In file included from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable.h:528:7: error: use of deleted function ‘std::__detail::_Hashtable_base<GoalStmt, std::pair<const GoalStmt, std::vector<Predicate> >, std::__detail::_Select1st, std::equal_to<GoalStmt>, std::hash<GoalStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’
  528 |       _Hashtable() = default;
      |       ^~~~~~~~~~
In file included from /usr/include/c++/11/bits/hashtable.h:35,
                 from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable_policy.h:1561:12: note: ‘std::__detail::_Hashtable_base<GoalStmt, std::pair<const GoalStmt, std::vector<Predicate> >, std::__detail::_Select1st, std::equal_to<GoalStmt>, std::hash<GoalStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’ is implicitly deleted because the default definition would be ill-formed:
 1561 |     struct _Hashtable_base
      |            ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1561:12: error: use of deleted function ‘std::__detail::_Hash_code_base<GoalStmt, std::pair<const GoalStmt, std::vector<Predicate> >, std::__detail::_Select1st, std::hash<GoalStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’
In file included from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable.h:528:7: error: use of deleted function ‘constexpr std::_Enable_default_constructor<false, _Tag>::_Enable_default_constructor() [with _Tag = std::__detail::_Hash_node_base]’
  528 |       _Hashtable() = default;
      |       ^~~~~~~~~~
In file included from /usr/include/c++/11/optional:41,
                 from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/enable_special_members.h:113:15: note: declared here
  113 |     constexpr _Enable_default_constructor() noexcept = delete;
      |               ^~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h: In member function ‘virtual void TraversePDDLProblem::visit_problem_def(ProblemDef*)’:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:370:14: error: base operand of ‘->’ has non-pointer type ‘Object’
  370 |             o->accept(this);
      |              ^~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h: In member function ‘virtual void TraversePDDLProblem::visit_object(Object*)’:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:387:14: error: call of overloaded ‘Type()’ is ambiguous
  387 |         Type type_def;
      |              ^~~~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:20:5: note: candidate: ‘Type::Type(std::string, std::string)’
   20 |     Type(string name_ = "<NULL>", string parent_ = "<NULL>")
      |     ^~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:13:5: note: candidate: ‘Type::Type(std::string, std::vector<std::__cxx11::basic_string<char> >)’
   13 |     Type(string name_ = "<NULL>", std::vector<string> parents_ = {"<NULL>"})
      |     ^~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h: In member function ‘virtual void TraversePDDLProblem::visit_init_stmt(InitStmt*)’:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:412:14: error: base operand of ‘->’ has non-pointer type ‘PredicateInstance’
  412 |             p->accept(this);
      |              ^~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h: In member function ‘void TraversePDDLProblem::add_goal(std::vector<Predicate>&, Formula&)’:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:426:38: error: ‘class std::vector<Predicate>’ has no member named ‘find’
  426 |         if (this->_domain.predicates.find(c.key) ==
      |                                      ^~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:433:9: error: ‘PredicateDef’ was not declared in this scope; did you mean ‘PredicateVar’?
  433 |         PredicateDef& predDef = this->_domain.predicates[c.key];
      |         ^~~~~~~~~~~~
      |         PredicateVar
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:433:23: error: ‘predDef’ was not declared in this scope
  433 |         PredicateDef& predDef = this->_domain.predicates[c.key];
      |                       ^~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:433:57: error: no match for ‘operator[]’ (operand types are ‘std::vector<Predicate>’ and ‘std::string’ {aka ‘std::__cxx11::basic_string<char>’})
  433 |         PredicateDef& predDef = this->_domain.predicates[c.key];
      |                                                         ^
In file included from /usr/include/c++/11/vector:67,
                 from /usr/include/gtest/gtest.h:60,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_vector.h:1043:7: note: candidate: ‘std::vector<_Tp, _Alloc>::reference std::vector<_Tp, _Alloc>::operator[](std::vector<_Tp, _Alloc>::size_type) [with _Tp = Predicate; _Alloc = std::allocator<Predicate>; std::vector<_Tp, _Alloc>::reference = Predicate&; std::vector<_Tp, _Alloc>::size_type = long unsigned int]’
 1043 |       operator[](size_type __n) _GLIBCXX_NOEXCEPT
      |       ^~~~~~~~
/usr/include/c++/11/bits/stl_vector.h:1043:28: note:   no known conversion for argument 1 from ‘std::string’ {aka ‘std::__cxx11::basic_string<char>’} to ‘std::vector<Predicate>::size_type’ {aka ‘long unsigned int’}
 1043 |       operator[](size_type __n) _GLIBCXX_NOEXCEPT
      |                  ~~~~~~~~~~^~~
/usr/include/c++/11/bits/stl_vector.h:1061:7: note: candidate: ‘std::vector<_Tp, _Alloc>::const_reference std::vector<_Tp, _Alloc>::operator[](std::vector<_Tp, _Alloc>::size_type) const [with _Tp = Predicate; _Alloc = std::allocator<Predicate>; std::vector<_Tp, _Alloc>::const_reference = const Predicate&; std::vector<_Tp, _Alloc>::size_type = long unsigned int]’
 1061 |       operator[](size_type __n) const _GLIBCXX_NOEXCEPT
      |       ^~~~~~~~
/usr/include/c++/11/bits/stl_vector.h:1061:28: note:   no known conversion for argument 1 from ‘std::string’ {aka ‘std::__cxx11::basic_string<char>’} to ‘std::vector<Predicate>::size_type’ {aka ‘long unsigned int’}
 1061 |       operator[](size_type __n) const _GLIBCXX_NOEXCEPT
      |                  ~~~~~~~~~~^~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h: In member function ‘virtual void TraversePDDLProblem::visit_goal_stmt(GoalStmt*)’:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:471:42: error: ‘class std::vector<Predicate>’ has no member named ‘find’
  471 |             if (this->_domain.predicates.find(formula.key) ==
      |                                          ^~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h: In member function ‘virtual void TraversePDDLProblem::visit_predicate_instance(PredicateInstance*)’:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:487:18: error: call of overloaded ‘Type()’ is ambiguous
  487 |             Type o_type;
      |                  ^~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:20:5: note: candidate: ‘Type::Type(std::string, std::string)’
   20 |     Type(string name_ = "<NULL>", string parent_ = "<NULL>")
      |     ^~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:13:5: note: candidate: ‘Type::Type(std::string, std::vector<std::__cxx11::basic_string<char> >)’
   13 |     Type(string name_ = "<NULL>", std::vector<string> parents_ = {"<NULL>"})
      |     ^~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:501:64: error: no matching function for call to ‘Predicate::Predicate(std::string&, std::vector<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >&)’
  501 |         _predicateHash[*node] = Predicate(node->name, signature);
      |                                                                ^
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:34:5: note: candidate: ‘Predicate::Predicate(std::string, std::vector<std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >)’
   34 |     Predicate(string name, vector<pair<string, vector<Type>>> signature)
      |     ^~~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:34:63: note:   no known conversion for argument 2 from ‘vector<pair<[...],std::__cxx11::basic_string<char>>>’ to ‘vector<pair<[...],std::vector<Type>>>’
   34 |     Predicate(string name, vector<pair<string, vector<Type>>> signature)
      |                            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note: candidate: ‘Predicate::Predicate(const Predicate&)’
   32 | class Predicate {
      |       ^~~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note:   candidate expects 1 argument, 2 provided
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note: candidate: ‘Predicate::Predicate(Predicate&&)’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note:   candidate expects 1 argument, 2 provided
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h: In member function ‘DomainDef Parser::parse_domain(bool)’:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:451:57: error: invalid cast to abstract class type ‘TraversePDDLDomain’
  451 |         TraversePDDLDomain visitor = TraversePDDLDomain();
      |                                                         ^
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:21:7: note:   because the following virtual functions are pure within ‘TraversePDDLDomain’:
   21 | class TraversePDDLDomain : public PDDLVisitor {
      |       ^~~~~~~~~~~~~~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:19:18: note:     ‘virtual void PDDLVisitor::visit_problem_def(ProblemDef*)’
   19 |     virtual void visit_problem_def(class ProblemDef*) = 0;
      |                  ^~~~~~~~~~~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:22:18: note:     ‘virtual void PDDLVisitor::visit_formula(Formula*)’
   22 |     virtual void visit_formula(class Formula*) = 0;
      |                  ^~~~~~~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:29:18: note:     ‘virtual void PDDLVisitor::visit_init_stmt(InitStmt*)’
   29 |     virtual void visit_init_stmt(class InitStmt*) = 0;
      |                  ^~~~~~~~~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:30:18: note:     ‘virtual void PDDLVisitor::visit_goal_stmt(GoalStmt*)’
   30 |     virtual void visit_goal_stmt(class GoalStmt*) = 0;
      |                  ^~~~~~~~~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:31:18: note:     ‘virtual void PDDLVisitor::visit_predicate_instance(PredicateInstance*)’
   31 |     virtual void visit_predicate_instance(class PredicateInstance*) = 0;
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:451:28: error: cannot declare variable ‘visitor’ to be of abstract type ‘TraversePDDLDomain’
  451 |         TraversePDDLDomain visitor = TraversePDDLDomain();
      |                            ^~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:453:24: error: could not convert ‘visitor.TraversePDDLDomain::domain’ from ‘Domain*’ to ‘DomainDef’
  453 |         return visitor.domain;
      |                ~~~~~~~~^~~~~~
      |                        |
      |                        Domain*
In file included from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable.h: In instantiation of ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::~_Hashtable() [with _Key = PredicateInstance; _Value = std::pair<const PredicateInstance, Predicate>; _Alloc = std::allocator<std::pair<const PredicateInstance, Predicate> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<PredicateInstance>; _Hash = std::hash<PredicateInstance>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’:
/usr/include/c++/11/bits/unordered_map.h:102:11:   required from here
/usr/include/c++/11/bits/hashtable.h:1534:5: error: use of deleted function ‘std::__detail::_Hashtable_base<PredicateInstance, std::pair<const PredicateInstance, Predicate>, std::__detail::_Select1st, std::equal_to<PredicateInstance>, std::hash<PredicateInstance>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’
 1534 |     }
      |     ^
/usr/include/c++/11/bits/hashtable.h: In instantiation of ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::~_Hashtable() [with _Key = InitStmt; _Value = std::pair<const InitStmt, std::vector<Predicate> >; _Alloc = std::allocator<std::pair<const InitStmt, std::vector<Predicate> > >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<InitStmt>; _Hash = std::hash<InitStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’:
/usr/include/c++/11/bits/unordered_map.h:102:11:   required from here
/usr/include/c++/11/bits/hashtable.h:1534:5: error: use of deleted function ‘std::__detail::_Hashtable_base<InitStmt, std::pair<const InitStmt, std::vector<Predicate> >, std::__detail::_Select1st, std::equal_to<InitStmt>, std::hash<InitStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’
/usr/include/c++/11/bits/hashtable.h: In instantiation of ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::~_Hashtable() [with _Key = GoalStmt; _Value = std::pair<const GoalStmt, std::vector<Predicate> >; _Alloc = std::allocator<std::pair<const GoalStmt, std::vector<Predicate> > >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<GoalStmt>; _Hash = std::hash<GoalStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’:
/usr/include/c++/11/bits/unordered_map.h:102:11:   required from here
/usr/include/c++/11/bits/hashtable.h:1534:5: error: use of deleted function ‘std::__detail::_Hashtable_base<GoalStmt, std::pair<const GoalStmt, std::vector<Predicate> >, std::__detail::_Select1st, std::equal_to<GoalStmt>, std::hash<GoalStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’
In file included from /usr/include/c++/11/bits/hashtable.h:35,
                 from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable_policy.h: In instantiation of ‘std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::__hash_code std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::_M_hash_code(const _Key&) const [with _Key = Type; _Value = std::pair<const Type, Type>; _ExtractKey = std::__detail::_Select1st; _Hash = std::hash<Type>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; bool __cache_hash_code = true; std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::__hash_code = long unsigned int]’:
/usr/include/c++/11/bits/hashtable_policy.h:702:45:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = Type; _Pair = std::pair<const Type, Type>; _Alloc = std::allocator<std::pair<const Type, Type> >; _Equal = std::equal_to<Type>; _Hash = std::hash<Type>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = Type; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = Type]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = Type; _Tp = Type; _Hash = std::hash<Type>; _Pred = std::equal_to<Type>; _Alloc = std::allocator<std::pair<const Type, Type> >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = Type; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = Type]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:56:40:   required from here
/usr/include/c++/11/bits/hashtable_policy.h:1217:23: error: static assertion failed: hash function must be invocable with an argument of key type
 1217 |         static_assert(__is_invocable<const _Hash&, const _Key&>{},
      |                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1217:23: note: ‘std::__is_invocable<const std::hash<Type>&, const Type&>{}’ evaluates to false
/usr/include/c++/11/bits/hashtable_policy.h:1219:25: error: no match for call to ‘(const std::hash<Type>) (const Type&)’
 1219 |         return _M_hash()(__k);
      |                ~~~~~~~~~^~~~~
/usr/include/c++/11/bits/hashtable_policy.h: In instantiation of ‘std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::__hash_code std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::_M_hash_code(const _Key&) const [with _Key = PredicateVar; _Value = std::pair<const PredicateVar, Predicate>; _ExtractKey = std::__detail::_Select1st; _Hash = std::hash<PredicateVar>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; bool __cache_hash_code = true; std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::__hash_code = long unsigned int]’:
/usr/include/c++/11/bits/hashtable_policy.h:702:45:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = PredicateVar; _Pair = std::pair<const PredicateVar, Predicate>; _Alloc = std::allocator<std::pair<const PredicateVar, Predicate> >; _Equal = std::equal_to<PredicateVar>; _Hash = std::hash<PredicateVar>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = Predicate; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = PredicateVar]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = PredicateVar; _Tp = Predicate; _Hash = std::hash<PredicateVar>; _Pred = std::equal_to<PredicateVar>; _Alloc = std::allocator<std::pair<const PredicateVar, Predicate> >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = Predicate; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = PredicateVar]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:153:51:   required from here
/usr/include/c++/11/bits/hashtable_policy.h:1217:23: error: static assertion failed: hash function must be invocable with an argument of key type
 1217 |         static_assert(__is_invocable<const _Hash&, const _Key&>{},
      |                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1217:23: note: ‘std::__is_invocable<const std::hash<PredicateVar>&, const PredicateVar&>{}’ evaluates to false
/usr/include/c++/11/bits/hashtable_policy.h:1219:25: error: no match for call to ‘(const std::hash<PredicateVar>) (const PredicateVar&)’
 1219 |         return _M_hash()(__k);
      |                ~~~~~~~~~^~~~~
/usr/include/c++/11/bits/hashtable_policy.h: In instantiation of ‘std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::__hash_code std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::_M_hash_code(const _Key&) const [with _Key = Variable; _Value = std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >; _ExtractKey = std::__detail::_Select1st; _Hash = std::hash<Variable>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; bool __cache_hash_code = true; std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::__hash_code = long unsigned int]’:
/usr/include/c++/11/bits/hashtable_policy.h:702:45:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = Variable; _Pair = std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >; _Alloc = std::allocator<std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > > >; _Equal = std::equal_to<Variable>; _Hash = std::hash<Variable>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = std::pair<std::__cxx11::basic_string<char>, std::vector<Type> >; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = Variable]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = Variable; _Tp = std::pair<std::__cxx11::basic_string<char>, std::vector<Type> >; _Hash = std::hash<Variable>; _Pred = std::equal_to<Variable>; _Alloc = std::allocator<std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > > >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = std::pair<std::__cxx11::basic_string<char>, std::vector<Type> >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = Variable]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:172:32:   required from here
/usr/include/c++/11/bits/hashtable_policy.h:1217:23: error: static assertion failed: hash function must be invocable with an argument of key type
 1217 |         static_assert(__is_invocable<const _Hash&, const _Key&>{},
      |                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1217:23: note: ‘std::__is_invocable<const std::hash<Variable>&, const Variable&>{}’ evaluates to false
/usr/include/c++/11/bits/hashtable_policy.h:1219:25: error: no match for call to ‘(const std::hash<Variable>) (const Variable&)’
 1219 |         return _M_hash()(__k);
      |                ~~~~~~~~~^~~~~
/usr/include/c++/11/bits/hashtable_policy.h: In instantiation of ‘std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::__hash_code std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::_M_hash_code(const _Key&) const [with _Key = PreconditionStmt; _Value = std::pair<const PreconditionStmt, std::vector<Predicate> >; _ExtractKey = std::__detail::_Select1st; _Hash = std::hash<PreconditionStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; bool __cache_hash_code = true; std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::__hash_code = long unsigned int]’:
/usr/include/c++/11/bits/hashtable_policy.h:702:45:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = PreconditionStmt; _Pair = std::pair<const PreconditionStmt, std::vector<Predicate> >; _Alloc = std::allocator<std::pair<const PreconditionStmt, std::vector<Predicate> > >; _Equal = std::equal_to<PreconditionStmt>; _Hash = std::hash<PreconditionStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = std::vector<Predicate>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = PreconditionStmt]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = PreconditionStmt; _Tp = std::vector<Predicate>; _Hash = std::hash<PreconditionStmt>; _Pred = std::equal_to<PreconditionStmt>; _Alloc = std::allocator<std::pair<const PreconditionStmt, std::vector<Predicate> > >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = std::vector<Predicate>; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = PreconditionStmt]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:214:68:   required from here
/usr/include/c++/11/bits/hashtable_policy.h:1217:23: error: static assertion failed: hash function must be invocable with an argument of key type
 1217 |         static_assert(__is_invocable<const _Hash&, const _Key&>{},
      |                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1217:23: note: ‘std::__is_invocable<const std::hash<PreconditionStmt>&, const PreconditionStmt&>{}’ evaluates to false
/usr/include/c++/11/bits/hashtable_policy.h:1219:25: error: no match for call to ‘(const std::hash<PreconditionStmt>) (const PreconditionStmt&)’
 1219 |         return _M_hash()(__k);
      |                ~~~~~~~~~^~~~~
/usr/include/c++/11/bits/hashtable_policy.h: In instantiation of ‘std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::__hash_code std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::_M_hash_code(const _Key&) const [with _Key = EffectStmt; _Value = std::pair<const EffectStmt, Effect>; _ExtractKey = std::__detail::_Select1st; _Hash = std::hash<EffectStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; bool __cache_hash_code = true; std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::__hash_code = long unsigned int]’:
/usr/include/c++/11/bits/hashtable_policy.h:702:45:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = EffectStmt; _Pair = std::pair<const EffectStmt, Effect>; _Alloc = std::allocator<std::pair<const EffectStmt, Effect> >; _Equal = std::equal_to<EffectStmt>; _Hash = std::hash<EffectStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = Effect; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = EffectStmt]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = EffectStmt; _Tp = Effect; _Hash = std::hash<EffectStmt>; _Pred = std::equal_to<EffectStmt>; _Alloc = std::allocator<std::pair<const EffectStmt, Effect> >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = Effect; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = EffectStmt]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:217:49:   required from here
/usr/include/c++/11/bits/hashtable_policy.h:1217:23: error: static assertion failed: hash function must be invocable with an argument of key type
 1217 |         static_assert(__is_invocable<const _Hash&, const _Key&>{},
      |                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1217:23: note: ‘std::__is_invocable<const std::hash<EffectStmt>&, const EffectStmt&>{}’ evaluates to false
/usr/include/c++/11/bits/hashtable_policy.h:1219:25: error: no match for call to ‘(const std::hash<EffectStmt>) (const EffectStmt&)’
 1219 |         return _M_hash()(__k);
      |                ~~~~~~~~~^~~~~
/usr/include/c++/11/bits/hashtable_policy.h: In instantiation of ‘std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::__hash_code std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::_M_hash_code(const _Key&) const [with _Key = ActionStmt; _Value = std::pair<const ActionStmt, Action>; _ExtractKey = std::__detail::_Select1st; _Hash = std::hash<ActionStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; bool __cache_hash_code = true; std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::__hash_code = long unsigned int]’:
/usr/include/c++/11/bits/hashtable_policy.h:702:45:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = ActionStmt; _Pair = std::pair<const ActionStmt, Action>; _Alloc = std::allocator<std::pair<const ActionStmt, Action> >; _Equal = std::equal_to<ActionStmt>; _Hash = std::hash<ActionStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = Action; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = ActionStmt]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = ActionStmt; _Tp = Action; _Hash = std::hash<ActionStmt>; _Pred = std::equal_to<ActionStmt>; _Alloc = std::allocator<std::pair<const ActionStmt, Action> >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = Action; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = ActionStmt]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:219:30:   required from here
/usr/include/c++/11/bits/hashtable_policy.h:1217:23: error: static assertion failed: hash function must be invocable with an argument of key type
 1217 |         static_assert(__is_invocable<const _Hash&, const _Key&>{},
      |                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1217:23: note: ‘std::__is_invocable<const std::hash<ActionStmt>&, const ActionStmt&>{}’ evaluates to false
/usr/include/c++/11/bits/hashtable_policy.h:1219:25: error: no match for call to ‘(const std::hash<ActionStmt>) (const ActionStmt&)’
 1219 |         return _M_hash()(__k);
      |                ~~~~~~~~~^~~~~
/usr/include/c++/11/bits/hashtable_policy.h: In instantiation of ‘std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::__hash_code std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::_M_hash_code(const _Key&) const [with _Key = InitStmt; _Value = std::pair<const InitStmt, std::vector<Predicate> >; _ExtractKey = std::__detail::_Select1st; _Hash = std::hash<InitStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; bool __cache_hash_code = true; std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::__hash_code = long unsigned int]’:
/usr/include/c++/11/bits/hashtable_policy.h:702:45:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = InitStmt; _Pair = std::pair<const InitStmt, std::vector<Predicate> >; _Alloc = std::allocator<std::pair<const InitStmt, std::vector<Predicate> > >; _Equal = std::equal_to<InitStmt>; _Hash = std::hash<InitStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = std::vector<Predicate>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = InitStmt]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = InitStmt; _Tp = std::vector<Predicate>; _Hash = std::hash<InitStmt>; _Pred = std::equal_to<InitStmt>; _Alloc = std::allocator<std::pair<const InitStmt, std::vector<Predicate> > >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = std::vector<Predicate>; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = InitStmt]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:375:64:   required from here
/usr/include/c++/11/bits/hashtable_policy.h:1217:23: error: static assertion failed: hash function must be invocable with an argument of key type
 1217 |         static_assert(__is_invocable<const _Hash&, const _Key&>{},
      |                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1217:23: note: ‘std::__is_invocable<const std::hash<InitStmt>&, const InitStmt&>{}’ evaluates to false
/usr/include/c++/11/bits/hashtable_policy.h:1219:25: error: no match for call to ‘(const std::hash<InitStmt>) (const InitStmt&)’
 1219 |         return _M_hash()(__k);
      |                ~~~~~~~~~^~~~~
/usr/include/c++/11/bits/hashtable_policy.h: In instantiation of ‘std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::__hash_code std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::_M_hash_code(const _Key&) const [with _Key = GoalStmt; _Value = std::pair<const GoalStmt, std::vector<Predicate> >; _ExtractKey = std::__detail::_Select1st; _Hash = std::hash<GoalStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; bool __cache_hash_code = true; std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::__hash_code = long unsigned int]’:
/usr/include/c++/11/bits/hashtable_policy.h:702:45:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = GoalStmt; _Pair = std::pair<const GoalStmt, std::vector<Predicate> >; _Alloc = std::allocator<std::pair<const GoalStmt, std::vector<Predicate> > >; _Equal = std::equal_to<GoalStmt>; _Hash = std::hash<GoalStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = std::vector<Predicate>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = GoalStmt]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = GoalStmt; _Tp = std::vector<Predicate>; _Hash = std::hash<GoalStmt>; _Pred = std::equal_to<GoalStmt>; _Alloc = std::allocator<std::pair<const GoalStmt, std::vector<Predicate> > >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = std::vector<Predicate>; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = GoalStmt]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:379:64:   required from here
/usr/include/c++/11/bits/hashtable_policy.h:1217:23: error: static assertion failed: hash function must be invocable with an argument of key type
 1217 |         static_assert(__is_invocable<const _Hash&, const _Key&>{},
      |                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1217:23: note: ‘std::__is_invocable<const std::hash<GoalStmt>&, const GoalStmt&>{}’ evaluates to false
/usr/include/c++/11/bits/hashtable_policy.h:1219:25: error: no match for call to ‘(const std::hash<GoalStmt>) (const GoalStmt&)’
 1219 |         return _M_hash()(__k);
      |                ~~~~~~~~~^~~~~
/usr/include/c++/11/bits/hashtable_policy.h: In instantiation of ‘std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::__hash_code std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::_M_hash_code(const _Key&) const [with _Key = PredicateInstance; _Value = std::pair<const PredicateInstance, Predicate>; _ExtractKey = std::__detail::_Select1st; _Hash = std::hash<PredicateInstance>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; bool __cache_hash_code = true; std::__detail::_Hash_code_base<_Key, _Value, _ExtractKey, _Hash, _RangeHash, _Unused, __cache_hash_code>::__hash_code = long unsigned int]’:
/usr/include/c++/11/bits/hashtable_policy.h:702:45:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = PredicateInstance; _Pair = std::pair<const PredicateInstance, Predicate>; _Alloc = std::allocator<std::pair<const PredicateInstance, Predicate> >; _Equal = std::equal_to<PredicateInstance>; _Hash = std::hash<PredicateInstance>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = Predicate; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = PredicateInstance]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = PredicateInstance; _Tp = Predicate; _Hash = std::hash<PredicateInstance>; _Pred = std::equal_to<PredicateInstance>; _Alloc = std::allocator<std::pair<const PredicateInstance, Predicate> >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = Predicate; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = PredicateInstance]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:413:46:   required from here
/usr/include/c++/11/bits/hashtable_policy.h:1217:23: error: static assertion failed: hash function must be invocable with an argument of key type
 1217 |         static_assert(__is_invocable<const _Hash&, const _Key&>{},
      |                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1217:23: note: ‘std::__is_invocable<const std::hash<PredicateInstance>&, const PredicateInstance&>{}’ evaluates to false
/usr/include/c++/11/bits/hashtable_policy.h:1219:25: error: no match for call to ‘(const std::hash<PredicateInstance>) (const PredicateInstance&)’
 1219 |         return _M_hash()(__k);
      |                ~~~~~~~~~^~~~~
In file included from /usr/include/x86_64-linux-gnu/c++/11/bits/c++allocator.h:33,
                 from /usr/include/c++/11/bits/allocator.h:46,
                 from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/ext/new_allocator.h: In instantiation of ‘void __gnu_cxx::new_allocator<_Tp>::construct(_Up*, _Args&& ...) [with _Up = Predicate; _Args = {std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&, std::vector<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, Type>, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, Type> > >&}; _Tp = Predicate]’:
/usr/include/c++/11/bits/alloc_traits.h:516:17:   required from ‘static void std::allocator_traits<std::allocator<_Tp1> >::construct(std::allocator_traits<std::allocator<_Tp1> >::allocator_type&, _Up*, _Args&& ...) [with _Up = Predicate; _Args = {std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&, std::vector<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, Type>, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, Type> > >&}; _Tp = Predicate; std::allocator_traits<std::allocator<_Tp1> >::allocator_type = std::allocator<Predicate>]’
/usr/include/c++/11/bits/vector.tcc:115:30:   required from ‘std::vector<_Tp, _Alloc>::reference std::vector<_Tp, _Alloc>::emplace_back(_Args&& ...) [with _Args = {std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&, std::vector<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, Type>, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, Type> > >&}; _Tp = Predicate; _Alloc = std::allocator<Predicate>; std::vector<_Tp, _Alloc>::reference = Predicate&]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:451:26:   required from here
/usr/include/c++/11/ext/new_allocator.h:162:11: error: no matching function for call to ‘Predicate::Predicate(std::__cxx11::basic_string<char>&, std::vector<std::pair<std::__cxx11::basic_string<char>, Type> >&)’
  162 |         { ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
      |           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:34:5: note: candidate: ‘Predicate::Predicate(std::string, std::vector<std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >)’
   34 |     Predicate(string name, vector<pair<string, vector<Type>>> signature)
      |     ^~~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:34:63: note:   no known conversion for argument 2 from ‘vector<pair<[...],Type>>’ to ‘vector<pair<[...],std::vector<Type>>>’
   34 |     Predicate(string name, vector<pair<string, vector<Type>>> signature)
      |                            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note: candidate: ‘Predicate::Predicate(const Predicate&)’
   32 | class Predicate {
      |       ^~~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note:   candidate expects 1 argument, 2 provided
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note: candidate: ‘Predicate::Predicate(Predicate&&)’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note:   candidate expects 1 argument, 2 provided
In file included from /usr/include/x86_64-linux-gnu/c++/11/bits/c++allocator.h:33,
                 from /usr/include/c++/11/bits/allocator.h:46,
                 from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/ext/new_allocator.h: In instantiation of ‘void __gnu_cxx::new_allocator<_Tp>::construct(_Up*, _Args&& ...) [with _Up = std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >; _Args = {std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&, Type&}; _Tp = std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >]’:
/usr/include/c++/11/bits/alloc_traits.h:516:17:   required from ‘static void std::allocator_traits<std::allocator<_Tp1> >::construct(std::allocator_traits<std::allocator<_Tp1> >::allocator_type&, _Up*, _Args&& ...) [with _Up = std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >; _Args = {std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&, Type&}; _Tp = std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >; std::allocator_traits<std::allocator<_Tp1> >::allocator_type = std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >]’
/usr/include/c++/11/bits/vector.tcc:115:30:   required from ‘std::vector<_Tp, _Alloc>::reference std::vector<_Tp, _Alloc>::emplace_back(_Args&& ...) [with _Args = {std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&, Type&}; _Tp = std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >; _Alloc = std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >; std::vector<_Tp, _Alloc>::reference = std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >&]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:499:35:   required from here
/usr/include/c++/11/ext/new_allocator.h:162:11: error: no matching function for call to ‘std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >::pair(std::__cxx11::basic_string<char>&, Type&)’
  162 |         { ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
      |           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:452:9: note: candidate: ‘template<class ... _Args1, long unsigned int ..._Indexes1, class ... _Args2, long unsigned int ..._Indexes2> std::pair<_T1, _T2>::pair(std::tuple<_Args1 ...>&, std::tuple<_Args2 ...>&, std::_Index_tuple<_Indexes1 ...>, std::_Index_tuple<_Indexes2 ...>) [with _Args1 = {_Args1 ...}; long unsigned int ..._Indexes1 = {_Indexes1 ...}; _Args2 = {_Args2 ...}; long unsigned int ..._Indexes2 = {_Indexes2 ...}; _T1 = std::__cxx11::basic_string<char>; _T2 = std::__cxx11::basic_string<char>]’
  452 |         pair(tuple<_Args1...>&, tuple<_Args2...>&,
      |         ^~~~
/usr/include/c++/11/bits/stl_pair.h:452:9: note:   template argument deduction/substitution failed:
In file included from /usr/include/x86_64-linux-gnu/c++/11/bits/c++allocator.h:33,
                 from /usr/include/c++/11/bits/allocator.h:46,
                 from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/ext/new_allocator.h:162:11: note:   ‘std::__cxx11::basic_string<char>’ is not derived from ‘std::tuple<_Tps ...>’
  162 |         { ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
      |           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:387:9: note: candidate: ‘template<class ... _Args1, class ... _Args2> std::pair<_T1, _T2>::pair(std::piecewise_construct_t, std::tuple<_Args1 ...>, std::tuple<_Args2 ...>) [with _Args1 = {_Args1 ...}; _Args2 = {_Args2 ...}; _T1 = std::__cxx11::basic_string<char>; _T2 = std::__cxx11::basic_string<char>]’
  387 |         pair(piecewise_construct_t, tuple<_Args1...>, tuple<_Args2...>);
      |         ^~~~
/usr/include/c++/11/bits/stl_pair.h:387:9: note:   template argument deduction/substitution failed:
In file included from /usr/include/x86_64-linux-gnu/c++/11/bits/c++allocator.h:33,
                 from /usr/include/c++/11/bits/allocator.h:46,
                 from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/ext/new_allocator.h:162:11: note:   ‘Type’ is not derived from ‘std::tuple<_Tps ...>’
  162 |         { ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
      |           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:381:28: note: candidate: ‘template<class _U1, class _U2, typename std::enable_if<(std::_PCC<((! std::is_same<std::__cxx11::basic_string<char>, _U1>::value) || (! std::is_same<std::__cxx11::basic_string<char>, _U2>::value)), std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >::_MoveConstructiblePair<_U1, _U2>() && (! std::_PCC<((! std::is_same<std::__cxx11::basic_string<char>, _U1>::value) || (! std::is_same<std::__cxx11::basic_string<char>, _U2>::value)), std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >::_ImplicitlyMoveConvertiblePair<_U1, _U2>())), bool>::type <anonymous> > constexpr std::pair<_T1, _T2>::pair(std::pair<_U1, _U2>&&) [with _U1 = _U1; _U2 = _U2; typename std::enable_if<(std::_PCC<((! std::is_same<_T1, _U1>::value) || (! std::is_same<_T2, _U2>::value)), _T1, _T2>::_MoveConstructiblePair<_U1, _U2>() && (! std::_PCC<((! std::is_same<_T1, _U1>::value) || (! std::is_same<_T2, _U2>::value)), _T1, _T2>::_ImplicitlyMoveConvertiblePair<_U1, _U2>())), bool>::type <anonymous> = <anonymous>; _T1 = std::__cxx11::basic_string<char>; _T2 = std::__cxx11::basic_string<char>]’
  381 |         explicit constexpr pair(pair<_U1, _U2>&& __p)
      |                            ^~~~
/usr/include/c++/11/bits/stl_pair.h:381:28: note:   template argument deduction/substitution failed:
In file included from /usr/include/x86_64-linux-gnu/c++/11/bits/c++allocator.h:33,
                 from /usr/include/c++/11/bits/allocator.h:46,
                 from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/ext/new_allocator.h:162:11: note:   ‘std::__cxx11::basic_string<char>’ is not derived from ‘std::pair<_T1, _T2>’
  162 |         { ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
      |           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:371:19: note: candidate: ‘template<class _U1, class _U2, typename std::enable_if<(std::_PCC<((! std::is_same<std::__cxx11::basic_string<char>, _U1>::value) || (! std::is_same<std::__cxx11::basic_string<char>, _U2>::value)), std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >::_MoveConstructiblePair<_U1, _U2>() && std::_PCC<((! std::is_same<std::__cxx11::basic_string<char>, _U1>::value) || (! std::is_same<std::__cxx11::basic_string<char>, _U2>::value)), std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >::_ImplicitlyMoveConvertiblePair<_U1, _U2>()), bool>::type <anonymous> > constexpr std::pair<_T1, _T2>::pair(std::pair<_U1, _U2>&&) [with _U1 = _U1; _U2 = _U2; typename std::enable_if<(std::_PCC<((! std::is_same<_T1, _U1>::value) || (! std::is_same<_T2, _U2>::value)), _T1, _T2>::_MoveConstructiblePair<_U1, _U2>() && std::_PCC<((! std::is_same<_T1, _U1>::value) || (! std::is_same<_T2, _U2>::value)), _T1, _T2>::_ImplicitlyMoveConvertiblePair<_U1, _U2>()), bool>::type <anonymous> = <anonymous>; _T1 = std::__cxx11::basic_string<char>; _T2 = std::__cxx11::basic_string<char>]’
  371 |         constexpr pair(pair<_U1, _U2>&& __p)
      |                   ^~~~
/usr/include/c++/11/bits/stl_pair.h:371:19: note:   template argument deduction/substitution failed:
In file included from /usr/include/x86_64-linux-gnu/c++/11/bits/c++allocator.h:33,
                 from /usr/include/c++/11/bits/allocator.h:46,
                 from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/ext/new_allocator.h:162:11: note:   ‘std::__cxx11::basic_string<char>’ is not derived from ‘std::pair<_T1, _T2>’
  162 |         { ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
      |           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:361:28: note: candidate: ‘template<class _U1, class _U2, typename std::enable_if<(_MoveConstructiblePair<_U1, _U2>() && (! _ImplicitlyMoveConvertiblePair<_U1, _U2>())), bool>::type <anonymous> > constexpr std::pair<_T1, _T2>::pair(_U1&&, _U2&&) [with _U1 = _U1; _U2 = _U2; typename std::enable_if<(std::_PCC<true, _T1, _T2>::_MoveConstructiblePair<_U1, _U2>() && (! std::_PCC<true, _T1, _T2>::_ImplicitlyMoveConvertiblePair<_U1, _U2>())), bool>::type <anonymous> = <anonymous>; _T1 = std::__cxx11::basic_string<char>; _T2 = std::__cxx11::basic_string<char>]’
  361 |         explicit constexpr pair(_U1&& __x, _U2&& __y)
      |                            ^~~~
/usr/include/c++/11/bits/stl_pair.h:361:28: note:   template argument deduction/substitution failed:
/usr/include/c++/11/bits/stl_pair.h:360:38: error: no type named ‘type’ in ‘struct std::enable_if<false, bool>’
  360 |                          bool>::type=false>
      |                                      ^~~~~
/usr/include/c++/11/bits/stl_pair.h:352:19: note: candidate: ‘template<class _U1, class _U2, typename std::enable_if<(_MoveConstructiblePair<_U1, _U2>() && _ImplicitlyMoveConvertiblePair<_U1, _U2>()), bool>::type <anonymous> > constexpr std::pair<_T1, _T2>::pair(_U1&&, _U2&&) [with _U1 = _U1; _U2 = _U2; typename std::enable_if<(std::_PCC<true, _T1, _T2>::_MoveConstructiblePair<_U1, _U2>() && std::_PCC<true, _T1, _T2>::_ImplicitlyMoveConvertiblePair<_U1, _U2>()), bool>::type <anonymous> = <anonymous>; _T1 = std::__cxx11::basic_string<char>; _T2 = std::__cxx11::basic_string<char>]’
  352 |         constexpr pair(_U1&& __x, _U2&& __y)
      |                   ^~~~
/usr/include/c++/11/bits/stl_pair.h:352:19: note:   template argument deduction/substitution failed:
/usr/include/c++/11/bits/stl_pair.h:351:38: error: no type named ‘type’ in ‘struct std::enable_if<false, bool>’
  351 |                          bool>::type=true>
      |                                      ^~~~
/usr/include/c++/11/bits/stl_pair.h:343:17: note: candidate: ‘template<class _U2, typename std::enable_if<_CopyMovePair<false, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, _U2>(), bool>::type <anonymous> > std::pair<_T1, _T2>::pair(const _T1&, _U2&&) [with _U2 = _U2; typename std::enable_if<std::_PCC<true, _T1, _T2>::_CopyMovePair<false, _T1, _U2>(), bool>::type <anonymous> = <anonymous>; _T1 = std::__cxx11::basic_string<char>; _T2 = std::__cxx11::basic_string<char>]’
  343 |        explicit pair(const _T1& __x, _U2&& __y)
      |                 ^~~~
/usr/include/c++/11/bits/stl_pair.h:343:17: note:   template argument deduction/substitution failed:
/usr/include/c++/11/bits/stl_pair.h:342:38: error: no type named ‘type’ in ‘struct std::enable_if<false, bool>’
  342 |                          bool>::type=false>
      |                                      ^~~~~
/usr/include/c++/11/bits/stl_pair.h:336:18: note: candidate: ‘template<class _U2, typename std::enable_if<_CopyMovePair<true, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, _U2>(), bool>::type <anonymous> > constexpr std::pair<_T1, _T2>::pair(const _T1&, _U2&&) [with _U2 = _U2; typename std::enable_if<std::_PCC<true, _T1, _T2>::_CopyMovePair<true, _T1, _U2>(), bool>::type <anonymous> = <anonymous>; _T1 = std::__cxx11::basic_string<char>; _T2 = std::__cxx11::basic_string<char>]’
  336 |        constexpr pair(const _T1& __x, _U2&& __y)
      |                  ^~~~
/usr/include/c++/11/bits/stl_pair.h:336:18: note:   template argument deduction/substitution failed:
/usr/include/c++/11/bits/stl_pair.h:335:38: error: no type named ‘type’ in ‘struct std::enable_if<false, bool>’
  335 |                          bool>::type=true>
      |                                      ^~~~
/usr/include/c++/11/bits/stl_pair.h:329:27: note: candidate: ‘template<class _U1, typename std::enable_if<_MoveCopyPair<false, _U1, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >(), bool>::type <anonymous> > constexpr std::pair<_T1, _T2>::pair(_U1&&, const _T2&) [with _U1 = _U1; typename std::enable_if<std::_PCC<true, _T1, _T2>::_MoveCopyPair<false, _U1, _T2>(), bool>::type <anonymous> = <anonymous>; _T1 = std::__cxx11::basic_string<char>; _T2 = std::__cxx11::basic_string<char>]’
  329 |        explicit constexpr pair(_U1&& __x, const _T2& __y)
      |                           ^~~~
/usr/include/c++/11/bits/stl_pair.h:329:27: note:   template argument deduction/substitution failed:
/usr/include/c++/11/bits/stl_pair.h:328:38: error: no type named ‘type’ in ‘struct std::enable_if<false, bool>’
  328 |                          bool>::type=false>
      |                                      ^~~~~
/usr/include/c++/11/bits/stl_pair.h:322:18: note: candidate: ‘template<class _U1, typename std::enable_if<_MoveCopyPair<true, _U1, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >(), bool>::type <anonymous> > constexpr std::pair<_T1, _T2>::pair(_U1&&, const _T2&) [with _U1 = _U1; typename std::enable_if<std::_PCC<true, _T1, _T2>::_MoveCopyPair<true, _U1, _T2>(), bool>::type <anonymous> = <anonymous>; _T1 = std::__cxx11::basic_string<char>; _T2 = std::__cxx11::basic_string<char>]’
  322 |        constexpr pair(_U1&& __x, const _T2& __y)
      |                  ^~~~
/usr/include/c++/11/bits/stl_pair.h:322:18: note:   template argument deduction/substitution failed:
In file included from /usr/include/x86_64-linux-gnu/c++/11/bits/c++allocator.h:33,
                 from /usr/include/c++/11/bits/allocator.h:46,
                 from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/ext/new_allocator.h:162:11: note:   cannot convert ‘std::forward<Type&>((* & __args#1))’ (type ‘Type’) to type ‘const std::__cxx11::basic_string<char>&’
  162 |         { ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
      |           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:309:28: note: candidate: ‘template<class _U1, class _U2, typename std::enable_if<(std::_PCC<((! std::is_same<std::__cxx11::basic_string<char>, _U1>::value) || (! std::is_same<std::__cxx11::basic_string<char>, _U2>::value)), std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >::_ConstructiblePair<_U1, _U2>() && (! std::_PCC<((! std::is_same<std::__cxx11::basic_string<char>, _U1>::value) || (! std::is_same<std::__cxx11::basic_string<char>, _U2>::value)), std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >::_ImplicitlyConvertiblePair<_U1, _U2>())), bool>::type <anonymous> > constexpr std::pair<_T1, _T2>::pair(const std::pair<_U1, _U2>&) [with _U1 = _U1; _U2 = _U2; typename std::enable_if<(std::_PCC<((! std::is_same<_T1, _U1>::value) || (! std::is_same<_T2, _U2>::value)), _T1, _T2>::_ConstructiblePair<_U1, _U2>() && (! std::_PCC<((! std::is_same<_T1, _U1>::value) || (! std::is_same<_T2, _U2>::value)), _T1, _T2>::_ImplicitlyConvertiblePair<_U1, _U2>())), bool>::type <anonymous> = <anonymous>; _T1 = std::__cxx11::basic_string<char>; _T2 = std::__cxx11::basic_string<char>]’
  309 |         explicit constexpr pair(const pair<_U1, _U2>& __p)
      |                            ^~~~
/usr/include/c++/11/bits/stl_pair.h:309:28: note:   template argument deduction/substitution failed:
In file included from /usr/include/x86_64-linux-gnu/c++/11/bits/c++allocator.h:33,
                 from /usr/include/c++/11/bits/allocator.h:46,
                 from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/ext/new_allocator.h:162:11: note:   ‘std::__cxx11::basic_string<char>’ is not derived from ‘const std::pair<_T1, _T2>’
  162 |         { ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
      |           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:300:19: note: candidate: ‘template<class _U1, class _U2, typename std::enable_if<(std::_PCC<((! std::is_same<std::__cxx11::basic_string<char>, _U1>::value) || (! std::is_same<std::__cxx11::basic_string<char>, _U2>::value)), std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >::_ConstructiblePair<_U1, _U2>() && std::_PCC<((! std::is_same<std::__cxx11::basic_string<char>, _U1>::value) || (! std::is_same<std::__cxx11::basic_string<char>, _U2>::value)), std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> >::_ImplicitlyConvertiblePair<_U1, _U2>()), bool>::type <anonymous> > constexpr std::pair<_T1, _T2>::pair(const std::pair<_U1, _U2>&) [with _U1 = _U1; _U2 = _U2; typename std::enable_if<(std::_PCC<((! std::is_same<_T1, _U1>::value) || (! std::is_same<_T2, _U2>::value)), _T1, _T2>::_ConstructiblePair<_U1, _U2>() && std::_PCC<((! std::is_same<_T1, _U1>::value) || (! std::is_same<_T2, _U2>::value)), _T1, _T2>::_ImplicitlyConvertiblePair<_U1, _U2>()), bool>::type <anonymous> = <anonymous>; _T1 = std::__cxx11::basic_string<char>; _T2 = std::__cxx11::basic_string<char>]’
  300 |         constexpr pair(const pair<_U1, _U2>& __p)
      |                   ^~~~
/usr/include/c++/11/bits/stl_pair.h:300:19: note:   template argument deduction/substitution failed:
In file included from /usr/include/x86_64-linux-gnu/c++/11/bits/c++allocator.h:33,
                 from /usr/include/c++/11/bits/allocator.h:46,
                 from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/ext/new_allocator.h:162:11: note:   ‘std::__cxx11::basic_string<char>’ is not derived from ‘const std::pair<_T1, _T2>’
  162 |         { ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
      |           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:276:26: note: candidate: ‘template<class _U1, class _U2, typename std::enable_if<(_ConstructiblePair<_U1, _U2>() && (! _ImplicitlyConvertiblePair<_U1, _U2>())), bool>::type <anonymous> > constexpr std::pair<_T1, _T2>::pair(const _T1&, const _T2&) [with _U1 = _U1; _U2 = _U2; typename std::enable_if<(std::_PCC<true, _T1, _T2>::_ConstructiblePair<_U1, _U2>() && (! std::_PCC<true, _T1, _T2>::_ImplicitlyConvertiblePair<_U1, _U2>())), bool>::type <anonymous> = <anonymous>; _T1 = std::__cxx11::basic_string<char>; _T2 = std::__cxx11::basic_string<char>]’
  276 |       explicit constexpr pair(const _T1& __a, const _T2& __b)
      |                          ^~~~
/usr/include/c++/11/bits/stl_pair.h:276:26: note:   template argument deduction/substitution failed:
/usr/include/c++/11/bits/stl_pair.h:275:38: error: no type named ‘type’ in ‘struct std::enable_if<false, bool>’
  275 |                          bool>::type=false>
      |                                      ^~~~~
/usr/include/c++/11/bits/stl_pair.h:266:17: note: candidate: ‘template<class _U1, class _U2, typename std::enable_if<(_ConstructiblePair<_U1, _U2>() && _ImplicitlyConvertiblePair<_U1, _U2>()), bool>::type <anonymous> > constexpr std::pair<_T1, _T2>::pair(const _T1&, const _T2&) [with _U1 = _U1; _U2 = _U2; typename std::enable_if<(std::_PCC<true, _T1, _T2>::_ConstructiblePair<_U1, _U2>() && std::_PCC<true, _T1, _T2>::_ImplicitlyConvertiblePair<_U1, _U2>()), bool>::type <anonymous> = <anonymous>; _T1 = std::__cxx11::basic_string<char>; _T2 = std::__cxx11::basic_string<char>]’
  266 |       constexpr pair(const _T1& __a, const _T2& __b)
      |                 ^~~~
/usr/include/c++/11/bits/stl_pair.h:266:17: note:   template argument deduction/substitution failed:
In file included from /usr/include/x86_64-linux-gnu/c++/11/bits/c++allocator.h:33,
                 from /usr/include/c++/11/bits/allocator.h:46,
                 from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/ext/new_allocator.h:162:11: note:   cannot convert ‘std::forward<Type&>((* & __args#1))’ (type ‘Type’) to type ‘const std::__cxx11::basic_string<char>&’
  162 |         { ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
      |           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:245:26: note: candidate: ‘template<class _U1, class _U2, typename std::enable_if<std::__and_<std::is_default_constructible<_U1>, std::is_default_constructible<_Dp>, std::__not_<std::__and_<std::__is_implicitly_default_constructible<_U1>, std::__is_implicitly_default_constructible<_U2> > > >::value, bool>::type <anonymous> > constexpr std::pair<_T1, _T2>::pair() [with _U1 = _U1; _U2 = _U2; typename std::enable_if<std::__and_<std::is_default_constructible<_U1>, std::is_default_constructible<_U2>, std::__not_<std::__and_<std::__is_implicitly_default_constructible<_U1>, std::__is_implicitly_default_constructible<_U2> > > >::value, bool>::type <anonymous> = <anonymous>; _T1 = std::__cxx11::basic_string<char>; _T2 = std::__cxx11::basic_string<char>]’
  245 |       explicit constexpr pair()
      |                          ^~~~
/usr/include/c++/11/bits/stl_pair.h:245:26: note:   template argument deduction/substitution failed:
In file included from /usr/include/x86_64-linux-gnu/c++/11/bits/c++allocator.h:33,
                 from /usr/include/c++/11/bits/allocator.h:46,
                 from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/ext/new_allocator.h:162:11: note:   candidate expects 0 arguments, 2 provided
  162 |         { ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
      |           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:232:26: note: candidate: ‘template<class _U1, class _U2, typename std::enable_if<std::__and_<std::__is_implicitly_default_constructible<_U1>, std::__is_implicitly_default_constructible<_U2> >::value, bool>::type <anonymous> > constexpr std::pair<_T1, _T2>::pair() [with _U1 = _U1; _U2 = _U2; typename std::enable_if<std::__and_<std::__is_implicitly_default_constructible<_U1>, std::__is_implicitly_default_constructible<_U2> >::value, bool>::type <anonymous> = <anonymous>; _T1 = std::__cxx11::basic_string<char>; _T2 = std::__cxx11::basic_string<char>]’
  232 |       _GLIBCXX_CONSTEXPR pair()
      |                          ^~~~
/usr/include/c++/11/bits/stl_pair.h:232:26: note:   template argument deduction/substitution failed:
In file included from /usr/include/x86_64-linux-gnu/c++/11/bits/c++allocator.h:33,
                 from /usr/include/c++/11/bits/allocator.h:46,
                 from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/ext/new_allocator.h:162:11: note:   candidate expects 0 arguments, 2 provided
  162 |         { ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
      |           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:315:17: note: candidate: ‘std::pair<_T1, _T2>::pair(std::pair<_T1, _T2>&&) [with _T1 = std::__cxx11::basic_string<char>; _T2 = std::__cxx11::basic_string<char>]’
  315 |       constexpr pair(pair&&) = default;         ///< Move constructor
      |                 ^~~~
/usr/include/c++/11/bits/stl_pair.h:315:17: note:   candidate expects 1 argument, 2 provided
/usr/include/c++/11/bits/stl_pair.h:314:17: note: candidate: ‘std::pair<_T1, _T2>::pair(const std::pair<_T1, _T2>&) [with _T1 = std::__cxx11::basic_string<char>; _T2 = std::__cxx11::basic_string<char>]’
  314 |       constexpr pair(const pair&) = default;    ///< Copy constructor
      |                 ^~~~
/usr/include/c++/11/bits/stl_pair.h:314:17: note:   candidate expects 1 argument, 2 provided
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h: In instantiation of ‘constexpr bool std::less<_Tp>::operator()(const _Tp&, const _Tp&) const [with _Tp = Predicate]’:
/usr/include/c++/11/bits/stl_tree.h:2071:35:   required from ‘std::pair<std::_Rb_tree_node_base*, std::_Rb_tree_node_base*> std::_Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::_M_get_insert_unique_pos(const key_type&) [with _Key = Predicate; _Val = Predicate; _KeyOfValue = std::_Identity<Predicate>; _Compare = std::less<Predicate>; _Alloc = std::allocator<Predicate>; std::_Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::key_type = Predicate]’
/usr/include/c++/11/bits/stl_tree.h:2124:4:   required from ‘std::pair<std::_Rb_tree_iterator<_Val>, bool> std::_Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::_M_insert_unique(_Arg&&) [with _Arg = const Predicate&; _Key = Predicate; _Val = Predicate; _KeyOfValue = std::_Identity<Predicate>; _Compare = std::less<Predicate>; _Alloc = std::allocator<Predicate>]’
/usr/include/c++/11/bits/stl_set.h:512:25:   required from ‘std::pair<typename std::_Rb_tree<_Key, _Key, std::_Identity<_Tp>, _Compare, typename __gnu_cxx::__alloc_traits<_Allocator>::rebind<_Key>::other>::const_iterator, bool> std::set<_Key, _Compare, _Alloc>::insert(const value_type&) [with _Key = Predicate; _Compare = std::less<Predicate>; _Alloc = std::allocator<Predicate>; typename std::_Rb_tree<_Key, _Key, std::_Identity<_Tp>, _Compare, typename __gnu_cxx::__alloc_traits<_Allocator>::rebind<_Key>::other>::const_iterator = std::_Rb_tree<Predicate, Predicate, std::_Identity<Predicate>, std::less<Predicate>, std::allocator<Predicate> >::const_iterator; typename __gnu_cxx::__alloc_traits<_Allocator>::rebind<_Key>::other = std::allocator<Predicate>; typename __gnu_cxx::__alloc_traits<_Allocator>::rebind<_Key> = __gnu_cxx::__alloc_traits<std::allocator<Predicate>, Predicate>::rebind<Predicate>; typename _Allocator::value_type = Predicate; std::set<_Key, _Compare, _Alloc>::value_type = Predicate]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:44:56:   required from here
/usr/include/c++/11/bits/stl_function.h:400:20: error: no match for ‘operator<’ (operand types are ‘const Predicate’ and ‘const Predicate’)
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:489:5: note: candidate: ‘template<class _T1, class _T2> constexpr bool std::operator<(const std::pair<_T1, _T2>&, const std::pair<_T1, _T2>&)’
  489 |     operator<(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_pair.h:489:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::pair<_T1, _T2>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:425:5: note: candidate: ‘template<class _Iterator> constexpr bool std::operator<(const std::reverse_iterator<_Iterator>&, const std::reverse_iterator<_Iterator>&)’
  425 |     operator<(const reverse_iterator<_Iterator>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:425:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::reverse_iterator<_Iterator>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:464:5: note: candidate: ‘template<class _IteratorL, class _IteratorR> constexpr bool std::operator<(const std::reverse_iterator<_Iterator>&, const std::reverse_iterator<_IteratorR>&)’
  464 |     operator<(const reverse_iterator<_IteratorL>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:464:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::reverse_iterator<_Iterator>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:1557:5: note: candidate: ‘template<class _IteratorL, class _IteratorR> constexpr bool std::operator<(const std::move_iterator<_IteratorL>&, const std::move_iterator<_IteratorR>&)’
 1557 |     operator<(const move_iterator<_IteratorL>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:1557:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::move_iterator<_IteratorL>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:1613:5: note: candidate: ‘template<class _Iterator> constexpr bool std::operator<(const std::move_iterator<_IteratorL>&, const std::move_iterator<_IteratorL>&)’
 1613 |     operator<(const move_iterator<_Iterator>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:1613:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::move_iterator<_IteratorL>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/tuple:39,
                 from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/array:311:5: note: candidate: ‘template<class _Tp, long unsigned int _Nm> bool std::operator<(const std::array<_Tp, _Nm>&, const std::array<_Tp, _Nm>&)’
  311 |     operator<(const array<_Tp, _Nm>& __a, const array<_Tp, _Nm>& __b)
      |     ^~~~~~~~
/usr/include/c++/11/array:311:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::array<_Tp, _Nm>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/tuple:1570:5: note: candidate: ‘template<class ... _TElements, class ... _UElements> constexpr bool std::operator<(const std::tuple<_Tps ...>&, const std::tuple<_UTypes ...>&)’
 1570 |     operator<(const tuple<_TElements...>& __t,
      |     ^~~~~~~~
/usr/include/c++/11/tuple:1570:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::tuple<_Tps ...>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:795:5: note: candidate: ‘template<class _Tp, class _Dp, class _Up, class _Ep> bool std::operator<(const std::unique_ptr<_Tp, _Dp>&, const std::unique_ptr<_Up, _Ep>&)’
  795 |     operator<(const unique_ptr<_Tp, _Dp>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:795:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:807:5: note: candidate: ‘template<class _Tp, class _Dp> bool std::operator<(const std::unique_ptr<_Tp, _Dp>&, std::nullptr_t)’
  807 |     operator<(const unique_ptr<_Tp, _Dp>& __x, nullptr_t)
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:807:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:816:5: note: candidate: ‘template<class _Tp, class _Dp> bool std::operator<(std::nullptr_t, const std::unique_ptr<_Tp, _Dp>&)’
  816 |     operator<(nullptr_t, const unique_ptr<_Tp, _Dp>& __x)
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:816:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1457:5: note: candidate: ‘template<class _Tp, class _Up, __gnu_cxx::_Lock_policy _Lp> bool std::operator<(const std::__shared_ptr<_Tp1, _Lp>&, const std::__shared_ptr<_Tp2, _Lp>&)’
 1457 |     operator<(const __shared_ptr<_Tp, _Lp>& __a,
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1457:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::__shared_ptr<_Tp1, _Lp>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1468:5: note: candidate: ‘template<class _Tp, __gnu_cxx::_Lock_policy _Lp> bool std::operator<(const std::__shared_ptr<_Tp, _Lp>&, std::nullptr_t)’
 1468 |     operator<(const __shared_ptr<_Tp, _Lp>& __a, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1468:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::__shared_ptr<_Tp, _Lp>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1476:5: note: candidate: ‘template<class _Tp, __gnu_cxx::_Lock_policy _Lp> bool std::operator<(std::nullptr_t, const std::__shared_ptr<_Tp, _Lp>&)’
 1476 |     operator<(nullptr_t, const __shared_ptr<_Tp, _Lp>& __a) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1476:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::__shared_ptr<_Tp, _Lp>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:488:5: note: candidate: ‘template<class _Tp, class _Up> bool std::operator<(const std::shared_ptr<_Tp>&, const std::shared_ptr<_Tp>&)’
  488 |     operator<(const shared_ptr<_Tp>& __a, const shared_ptr<_Up>& __b) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:488:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::shared_ptr<_Tp>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:499:5: note: candidate: ‘template<class _Tp> bool std::operator<(const std::shared_ptr<_Tp>&, std::nullptr_t)’
  499 |     operator<(const shared_ptr<_Tp>& __a, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:499:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::shared_ptr<_Tp>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:508:5: note: candidate: ‘template<class _Tp> bool std::operator<(std::nullptr_t, const std::shared_ptr<_Tp>&)’
  508 |     operator<(nullptr_t, const shared_ptr<_Tp>& __a) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:508:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::shared_ptr<_Tp>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:589:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator<(std::basic_string_view<_CharT, _Traits>, std::basic_string_view<_CharT, _Traits>)’
  589 |     operator< (basic_string_view<_CharT, _Traits> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:589:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘Predicate’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:595:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator<(std::basic_string_view<_CharT, _Traits>, std::__type_identity_t<std::basic_string_view<_CharT, _Traits> >)’
  595 |     operator< (basic_string_view<_CharT, _Traits> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:595:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘Predicate’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:602:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator<(std::__type_identity_t<std::basic_string_view<_CharT, _Traits> >, std::basic_string_view<_CharT, _Traits>)’
  602 |     operator< (__type_identity_t<basic_string_view<_CharT, _Traits>> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:602:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘Predicate’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6340:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator<(const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&, const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&)’
 6340 |     operator<(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6340:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6353:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator<(const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&, const _CharT*)’
 6353 |     operator<(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6353:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6365:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator<(const _CharT*, const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&)’
 6365 |     operator<(const _CharT* __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6365:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   mismatched types ‘const _CharT*’ and ‘Predicate’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/vector:67,
                 from /usr/include/gtest/gtest.h:60,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_vector.h:1930:5: note: candidate: ‘template<class _Tp, class _Alloc> bool std::operator<(const std::vector<_Tp, _Alloc>&, const std::vector<_Tp, _Alloc>&)’
 1930 |     operator<(const vector<_Tp, _Alloc>& __x, const vector<_Tp, _Alloc>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_vector.h:1930:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::vector<_Tp, _Alloc>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1063:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_lt_t<_Tp, _Up> std::operator<(const std::optional<_Tp>&, const std::optional<_Up>&)’
 1063 |     operator<(const optional<_Tp>& __lhs, const optional<_Up>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1063:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::optional<_Tp>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1131:5: note: candidate: ‘template<class _Tp> constexpr bool std::operator<(const std::optional<_Tp>&, std::nullopt_t)’
 1131 |     operator<(const optional<_Tp>& /* __lhs */, nullopt_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/optional:1131:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::optional<_Tp>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1136:5: note: candidate: ‘template<class _Tp> constexpr bool std::operator<(std::nullopt_t, const std::optional<_Tp>&)’
 1136 |     operator<(nullopt_t, const optional<_Tp>& __rhs) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/optional:1136:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::optional<_Tp>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1197:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_lt_t<_Tp, _Up> std::operator<(const std::optional<_Tp>&, const _Up&)’
 1197 |     operator<(const optional<_Tp>& __lhs, const _Up& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1197:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::optional<_Tp>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1203:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_lt_t<_Up, _Tp> std::operator<(const _Up&, const std::optional<_Tp>&)’
 1203 |     operator<(const _Up& __lhs, const optional<_Tp>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1203:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::optional<_Tp>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2380,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/variant:1247:3: note: candidate: ‘template<class ... _Types> constexpr bool std::operator<(const std::variant<_Types ...>&, const std::variant<_Types ...>&)’
 1247 |   _VARIANT_RELATION_FUNCTION_TEMPLATE(<, less)
      |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/variant:1247:3: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::variant<_Types ...>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/map:61,
                 from /usr/include/gtest/internal/gtest-internal.h:59,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_map.h:1501:5: note: candidate: ‘template<class _Key, class _Tp, class _Compare, class _Alloc> bool std::operator<(const std::map<_Key, _Tp, _Compare, _Allocator>&, const std::map<_Key, _Tp, _Compare, _Allocator>&)’
 1501 |     operator<(const map<_Key, _Tp, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_map.h:1501:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::map<_Key, _Tp, _Compare, _Allocator>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/map:62,
                 from /usr/include/gtest/internal/gtest-internal.h:59,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_multimap.h:1166:5: note: candidate: ‘template<class _Key, class _Tp, class _Compare, class _Alloc> bool std::operator<(const std::multimap<_Key, _Tp, _Compare, _Allocator>&, const std::multimap<_Key, _Tp, _Compare, _Allocator>&)’
 1166 |     operator<(const multimap<_Key, _Tp, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_multimap.h:1166:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::multimap<_Key, _Tp, _Compare, _Allocator>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/set:61,
                 from /usr/include/gtest/internal/gtest-internal.h:60,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_set.h:1023:5: note: candidate: ‘template<class _Key, class _Compare, class _Alloc> bool std::operator<(const std::set<_Key, _Compare, _Allocator>&, const std::set<_Key, _Compare, _Allocator>&)’
 1023 |     operator<(const set<_Key, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_set.h:1023:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::set<_Key, _Compare, _Allocator>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/set:62,
                 from /usr/include/gtest/internal/gtest-internal.h:60,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_multiset.h:1009:5: note: candidate: ‘template<class _Key, class _Compare, class _Alloc> bool std::operator<(const std::multiset<_Key, _Compare, _Allocator>&, const std::multiset<_Key, _Compare, _Allocator>&)’
 1009 |     operator<(const multiset<_Key, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_multiset.h:1009:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::multiset<_Key, _Compare, _Allocator>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/deque:67,
                 from /usr/include/c++/11/stack:60,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/lisp_iterators.h:7,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:10:
/usr/include/c++/11/bits/stl_deque.h:2284:5: note: candidate: ‘template<class _Tp, class _Alloc> bool std::operator<(const std::deque<_Tp, _Alloc>&, const std::deque<_Tp, _Alloc>&)’
 2284 |     operator<(const deque<_Tp, _Alloc>& __x, const deque<_Tp, _Alloc>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_deque.h:2284:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::deque<_Tp, _Alloc>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/stack:61,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/lisp_iterators.h:7,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:10:
/usr/include/c++/11/bits/stl_stack.h:337:5: note: candidate: ‘template<class _Tp, class _Seq> bool std::operator<(const std::stack<_Tp, _Seq>&, const std::stack<_Tp, _Seq>&)’
  337 |     operator<(const stack<_Tp, _Seq>& __x, const stack<_Tp, _Seq>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_stack.h:337:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:400:20: note:   ‘const Predicate’ is not derived from ‘const std::stack<_Tp, _Seq>’
  400 |       { return __x < __y; }
      |                ~~~~^~~~~
In file included from /usr/include/c++/11/bits/ios_base.h:46,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/system_error:269:3: note: candidate: ‘bool std::operator<(const std::error_code&, const std::error_code&)’
  269 |   operator<(const error_code& __lhs, const error_code& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:269:31: note:   no known conversion for argument 1 from ‘const Predicate’ to ‘const std::error_code&’
  269 |   operator<(const error_code& __lhs, const error_code& __rhs) noexcept
      |             ~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:398:3: note: candidate: ‘bool std::operator<(const std::error_condition&, const std::error_condition&)’
  398 |   operator<(const error_condition& __lhs,
      |   ^~~~~~~~
/usr/include/c++/11/system_error:398:36: note:   no known conversion for argument 1 from ‘const Predicate’ to ‘const std::error_condition&’
  398 |   operator<(const error_condition& __lhs,
      |             ~~~~~~~~~~~~~~~~~~~~~~~^~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2380,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/variant:1289:18: note: candidate: ‘constexpr bool std::operator<(std::monostate, std::monostate)’
 1289 |   constexpr bool operator<(monostate, monostate) noexcept { return false; }
      |                  ^~~~~~~~
/usr/include/c++/11/variant:1289:28: note:   no known conversion for argument 1 from ‘const Predicate’ to ‘std::monostate’
 1289 |   constexpr bool operator<(monostate, monostate) noexcept { return false; }
      |                            ^~~~~~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h: In instantiation of ‘constexpr bool std::equal_to<_Tp>::operator()(const _Tp&, const _Tp&) const [with _Tp = PredicateVar]’:
/usr/include/c++/11/bits/hashtable_policy.h:1617:39:   required from ‘bool std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::_M_equals(const _Key&, std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::__hash_code, const std::__detail::_Hash_node_value<_Value, typename _Traits::__hash_cached::value>&) const [with _Key = PredicateVar; _Value = std::pair<const PredicateVar, Predicate>; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<PredicateVar>; _Hash = std::hash<PredicateVar>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::__hash_code = long unsigned int; typename _Traits::__hash_cached = std::__detail::_Hashtable_traits<true, false, true>::__hash_cached]’
/usr/include/c++/11/bits/hashtable.h:1840:23:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_base_ptr std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_M_find_before_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type, const key_type&, std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code) const [with _Key = PredicateVar; _Value = std::pair<const PredicateVar, Predicate>; _Alloc = std::allocator<std::pair<const PredicateVar, Predicate> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<PredicateVar>; _Hash = std::hash<PredicateVar>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_base_ptr = std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<const PredicateVar, Predicate>, true> > >::__node_base*; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type = long unsigned int; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::key_type = PredicateVar; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code = long unsigned int]’
/usr/include/c++/11/bits/hashtable.h:810:31:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_ptr std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_M_find_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type, const key_type&, std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code) const [with _Key = PredicateVar; _Value = std::pair<const PredicateVar, Predicate>; _Alloc = std::allocator<std::pair<const PredicateVar, Predicate> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<PredicateVar>; _Hash = std::hash<PredicateVar>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_ptr = std::allocator<std::__detail::_Hash_node<std::pair<const PredicateVar, Predicate>, true> >::value_type*; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type = long unsigned int; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::key_type = PredicateVar; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code = long unsigned int]’
/usr/include/c++/11/bits/hashtable_policy.h:704:42:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = PredicateVar; _Pair = std::pair<const PredicateVar, Predicate>; _Alloc = std::allocator<std::pair<const PredicateVar, Predicate> >; _Equal = std::equal_to<PredicateVar>; _Hash = std::hash<PredicateVar>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = Predicate; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = PredicateVar]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = PredicateVar; _Tp = Predicate; _Hash = std::hash<PredicateVar>; _Pred = std::equal_to<PredicateVar>; _Alloc = std::allocator<std::pair<const PredicateVar, Predicate> >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = Predicate; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = PredicateVar]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:153:51:   required from here
/usr/include/c++/11/bits/stl_function.h:370:20: error: no match for ‘operator==’ (operand types are ‘const PredicateVar’ and ‘const PredicateVar’)
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:186:10: note: candidate: ‘bool PredicateVar::operator==(const PredicateVar&)’ (near match)
  186 |     bool operator==(PredicateVar const& other) {
      |          ^~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:186:10: note:   passing ‘const PredicateVar*’ as ‘this’ argument discards qualifiers
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:466:5: note: candidate: ‘template<class _T1, class _T2> constexpr bool std::operator==(const std::pair<_T1, _T2>&, const std::pair<_T1, _T2>&)’
  466 |     operator==(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_pair.h:466:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::pair<_T1, _T2>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:419:5: note: candidate: ‘template<class _Iterator> constexpr bool std::operator==(const std::reverse_iterator<_Iterator>&, const std::reverse_iterator<_Iterator>&)’
  419 |     operator==(const reverse_iterator<_Iterator>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:419:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::reverse_iterator<_Iterator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:458:5: note: candidate: ‘template<class _IteratorL, class _IteratorR> constexpr bool std::operator==(const std::reverse_iterator<_Iterator>&, const std::reverse_iterator<_IteratorR>&)’
  458 |     operator==(const reverse_iterator<_IteratorL>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:458:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::reverse_iterator<_Iterator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:1533:5: note: candidate: ‘template<class _IteratorL, class _IteratorR> constexpr bool std::operator==(const std::move_iterator<_IteratorL>&, const std::move_iterator<_IteratorR>&)’
 1533 |     operator==(const move_iterator<_IteratorL>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:1533:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::move_iterator<_IteratorL>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:1601:5: note: candidate: ‘template<class _Iterator> constexpr bool std::operator==(const std::move_iterator<_IteratorL>&, const std::move_iterator<_IteratorL>&)’
 1601 |     operator==(const move_iterator<_Iterator>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:1601:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::move_iterator<_IteratorL>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/allocator.h:218:5: note: candidate: ‘template<class _T1, class _T2> bool std::operator==(const std::allocator<_Tp1>&, const std::allocator<_T2>&)’
  218 |     operator==(const allocator<_T1>&, const allocator<_T2>&)
      |     ^~~~~~~~
/usr/include/c++/11/bits/allocator.h:218:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::allocator<_Tp1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/tuple:39,
                 from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/array:276:5: note: candidate: ‘template<class _Tp, long unsigned int _Nm> bool std::operator==(const std::array<_Tp, _Nm>&, const std::array<_Tp, _Nm>&)’
  276 |     operator==(const array<_Tp, _Nm>& __one, const array<_Tp, _Nm>& __two)
      |     ^~~~~~~~
/usr/include/c++/11/array:276:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::array<_Tp, _Nm>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/tuple:1528:5: note: candidate: ‘template<class ... _TElements, class ... _UElements> constexpr bool std::operator==(const std::tuple<_Tps ...>&, const std::tuple<_UTypes ...>&)’
 1528 |     operator==(const tuple<_TElements...>& __t,
      |     ^~~~~~~~
/usr/include/c++/11/tuple:1528:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::tuple<_Tps ...>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:753:5: note: candidate: ‘template<class _Tp, class _Dp, class _Up, class _Ep> bool std::operator==(const std::unique_ptr<_Tp, _Dp>&, const std::unique_ptr<_Up, _Ep>&)’
  753 |     operator==(const unique_ptr<_Tp, _Dp>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:753:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:760:5: note: candidate: ‘template<class _Tp, class _Dp> bool std::operator==(const std::unique_ptr<_Tp, _Dp>&, std::nullptr_t)’
  760 |     operator==(const unique_ptr<_Tp, _Dp>& __x, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:760:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:767:5: note: candidate: ‘template<class _Tp, class _Dp> bool std::operator==(std::nullptr_t, const std::unique_ptr<_Tp, _Dp>&)’
  767 |     operator==(nullptr_t, const unique_ptr<_Tp, _Dp>& __x) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:767:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/iosfwd:40,
                 from /usr/include/c++/11/bits/shared_ptr.h:52,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/postypes.h:222:5: note: candidate: ‘template<class _StateT> bool std::operator==(const std::fpos<_StateT>&, const std::fpos<_StateT>&)’
  222 |     operator==(const fpos<_StateT>& __lhs, const fpos<_StateT>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/bits/postypes.h:222:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::fpos<_StateT>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1410:5: note: candidate: ‘template<class _Tp1, class _Tp2, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(const std::__shared_ptr<_Tp1, _Lp>&, const std::__shared_ptr<_Tp2, _Lp>&)’
 1410 |     operator==(const __shared_ptr<_Tp1, _Lp>& __a,
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1410:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::__shared_ptr<_Tp1, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1416:5: note: candidate: ‘template<class _Tp, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(const std::__shared_ptr<_Tp, _Lp>&, std::nullptr_t)’
 1416 |     operator==(const __shared_ptr<_Tp, _Lp>& __a, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1416:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::__shared_ptr<_Tp, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1436:5: note: candidate: ‘template<class _Tp, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(std::nullptr_t, const std::__shared_ptr<_Tp, _Lp>&)’
 1436 |     operator==(nullptr_t, const __shared_ptr<_Tp, _Lp>& __a) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1436:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::__shared_ptr<_Tp, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:437:5: note: candidate: ‘template<class _Tp, class _Up> bool std::operator==(const std::shared_ptr<_Tp>&, const std::shared_ptr<_Tp>&)’
  437 |     operator==(const shared_ptr<_Tp>& __a, const shared_ptr<_Up>& __b) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:437:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:443:5: note: candidate: ‘template<class _Tp> bool std::operator==(const std::shared_ptr<_Tp>&, std::nullptr_t)’
  443 |     operator==(const shared_ptr<_Tp>& __a, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:443:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:464:5: note: candidate: ‘template<class _Tp> bool std::operator==(std::nullptr_t, const std::shared_ptr<_Tp>&)’
  464 |     operator==(nullptr_t, const shared_ptr<_Tp>& __a) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:464:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:535:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::basic_string_view<_CharT, _Traits>, std::basic_string_view<_CharT, _Traits>)’
  535 |     operator==(basic_string_view<_CharT, _Traits> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:535:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘PredicateVar’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:541:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::basic_string_view<_CharT, _Traits>, std::__type_identity_t<std::basic_string_view<_CharT, _Traits> >)’
  541 |     operator==(basic_string_view<_CharT, _Traits> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:541:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘PredicateVar’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:564:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::__type_identity_t<std::basic_string_view<_CharT, _Traits> >, std::basic_string_view<_CharT, _Traits>)’
  564 |     operator==(__type_identity_t<basic_string_view<_CharT, _Traits>> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:564:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘PredicateVar’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6226:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&, const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&)’
 6226 |     operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6226:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6234:5: note: candidate: ‘template<class _CharT> typename __gnu_cxx::__enable_if<std::__is_char<_Tp>::__value, bool>::__type std::operator==(const std::__cxx11::basic_string<_CharT>&, const std::__cxx11::basic_string<_CharT>&)’
 6234 |     operator==(const basic_string<_CharT>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6234:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::__cxx11::basic_string<_CharT>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6248:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&, const _CharT*)’
 6248 |     operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6248:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6289:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const _CharT*, const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&)’
 6289 |     operator==(const _CharT* __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6289:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   mismatched types ‘const _CharT*’ and ‘PredicateVar’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/locale_facets.h:48,
                 from /usr/include/c++/11/bits/basic_ios.h:37,
                 from /usr/include/c++/11/ios:44,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/streambuf_iterator.h:226:5: note: candidate: ‘template<class _CharT, class _Traits> bool std::operator==(const std::istreambuf_iterator<_CharT, _Traits>&, const std::istreambuf_iterator<_CharT, _Traits>&)’
  226 |     operator==(const istreambuf_iterator<_CharT, _Traits>& __a,
      |     ^~~~~~~~
/usr/include/c++/11/bits/streambuf_iterator.h:226:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::istreambuf_iterator<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/vector:67,
                 from /usr/include/gtest/gtest.h:60,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_vector.h:1892:5: note: candidate: ‘template<class _Tp, class _Alloc> bool std::operator==(const std::vector<_Tp, _Alloc>&, const std::vector<_Tp, _Alloc>&)’
 1892 |     operator==(const vector<_Tp, _Alloc>& __x, const vector<_Tp, _Alloc>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_vector.h:1892:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::vector<_Tp, _Alloc>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1045:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Tp, _Up> std::operator==(const std::optional<_Tp>&, const std::optional<_Up>&)’
 1045 |     operator==(const optional<_Tp>& __lhs, const optional<_Up>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1045:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1105:5: note: candidate: ‘template<class _Tp> constexpr bool std::operator==(const std::optional<_Tp>&, std::nullopt_t)’
 1105 |     operator==(const optional<_Tp>& __lhs, nullopt_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/optional:1105:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1116:5: note: candidate: ‘template<class _Tp> constexpr bool std::operator==(std::nullopt_t, const std::optional<_Tp>&)’
 1116 |     operator==(nullopt_t, const optional<_Tp>& __rhs) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/optional:1116:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1173:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Tp, _Up> std::operator==(const std::optional<_Tp>&, const _Up&)’
 1173 |     operator==(const optional<_Tp>& __lhs, const _Up& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1173:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1179:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Up, _Tp> std::operator==(const _Up&, const std::optional<_Tp>&)’
 1179 |     operator==(const _Up& __lhs, const optional<_Tp>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1179:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2380,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/variant:1249:3: note: candidate: ‘template<class ... _Types> constexpr bool std::operator==(const std::variant<_Types ...>&, const std::variant<_Types ...>&)’
 1249 |   _VARIANT_RELATION_FUNCTION_TEMPLATE(==, equal)
      |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/variant:1249:3: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::variant<_Types ...>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/map:61,
                 from /usr/include/gtest/internal/gtest-internal.h:59,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_map.h:1463:5: note: candidate: ‘template<class _Key, class _Tp, class _Compare, class _Alloc> bool std::operator==(const std::map<_Key, _Tp, _Compare, _Allocator>&, const std::map<_Key, _Tp, _Compare, _Allocator>&)’
 1463 |     operator==(const map<_Key, _Tp, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_map.h:1463:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::map<_Key, _Tp, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/map:62,
                 from /usr/include/gtest/internal/gtest-internal.h:59,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_multimap.h:1128:5: note: candidate: ‘template<class _Key, class _Tp, class _Compare, class _Alloc> bool std::operator==(const std::multimap<_Key, _Tp, _Compare, _Allocator>&, const std::multimap<_Key, _Tp, _Compare, _Allocator>&)’
 1128 |     operator==(const multimap<_Key, _Tp, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_multimap.h:1128:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::multimap<_Key, _Tp, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/set:61,
                 from /usr/include/gtest/internal/gtest-internal.h:60,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_set.h:985:5: note: candidate: ‘template<class _Key, class _Compare, class _Alloc> bool std::operator==(const std::set<_Key, _Compare, _Allocator>&, const std::set<_Key, _Compare, _Allocator>&)’
  985 |     operator==(const set<_Key, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_set.h:985:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::set<_Key, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/set:62,
                 from /usr/include/gtest/internal/gtest-internal.h:60,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_multiset.h:971:5: note: candidate: ‘template<class _Key, class _Compare, class _Alloc> bool std::operator==(const std::multiset<_Key, _Compare, _Allocator>&, const std::multiset<_Key, _Compare, _Allocator>&)’
  971 |     operator==(const multiset<_Key, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_multiset.h:971:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::multiset<_Key, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/functional:59,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/std_function.h:718:5: note: candidate: ‘template<class _Res, class ... _Args> bool std::operator==(const std::function<_Res(_ArgTypes ...)>&, std::nullptr_t)’
  718 |     operator==(const function<_Res(_Args...)>& __f, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/std_function.h:718:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::function<_Res(_ArgTypes ...)>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/functional:59,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/std_function.h:725:5: note: candidate: ‘template<class _Res, class ... _Args> bool std::operator==(std::nullptr_t, const std::function<_Res(_ArgTypes ...)>&)’
  725 |     operator==(nullptr_t, const function<_Res(_Args...)>& __f) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/std_function.h:725:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::function<_Res(_ArgTypes ...)>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/unordered_map:47,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unordered_map.h:2134:5: note: candidate: ‘template<class _Key1, class _Tp1, class _Hash1, class _Pred1, class _Alloc1> bool std::operator==(const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&, const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&)’
 2134 |     operator==(const unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unordered_map.h:2134:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/unordered_map:47,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unordered_map.h:2148:5: note: candidate: ‘template<class _Key1, class _Tp1, class _Hash1, class _Pred1, class _Alloc1> bool std::operator==(const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&, const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&)’
 2148 |     operator==(const unordered_multimap<_Key, _Tp, _Hash, _Pred, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unordered_map.h:2148:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/deque:67,
                 from /usr/include/c++/11/stack:60,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/lisp_iterators.h:7,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:10:
/usr/include/c++/11/bits/stl_deque.h:2246:5: note: candidate: ‘template<class _Tp, class _Alloc> bool std::operator==(const std::deque<_Tp, _Alloc>&, const std::deque<_Tp, _Alloc>&)’
 2246 |     operator==(const deque<_Tp, _Alloc>& __x, const deque<_Tp, _Alloc>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_deque.h:2246:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::deque<_Tp, _Alloc>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/stack:61,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/lisp_iterators.h:7,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:10:
/usr/include/c++/11/bits/stl_stack.h:319:5: note: candidate: ‘template<class _Tp, class _Seq> bool std::operator==(const std::stack<_Tp, _Seq>&, const std::stack<_Tp, _Seq>&)’
  319 |     operator==(const stack<_Tp, _Seq>& __x, const stack<_Tp, _Seq>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_stack.h:319:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateVar’ is not derived from ‘const std::stack<_Tp, _Seq>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/ios_base.h:46,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/system_error:362:3: note: candidate: ‘bool std::operator==(const std::error_code&, const std::error_code&)’
  362 |   operator==(const error_code& __lhs, const error_code& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:362:32: note:   no known conversion for argument 1 from ‘const PredicateVar’ to ‘const std::error_code&’
  362 |   operator==(const error_code& __lhs, const error_code& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:368:3: note: candidate: ‘bool std::operator==(const std::error_code&, const std::error_condition&)’
  368 |   operator==(const error_code& __lhs, const error_condition& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:368:32: note:   no known conversion for argument 1 from ‘const PredicateVar’ to ‘const std::error_code&’
  368 |   operator==(const error_code& __lhs, const error_condition& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:376:3: note: candidate: ‘bool std::operator==(const std::error_condition&, const std::error_condition&)’
  376 |   operator==(const error_condition& __lhs,
      |   ^~~~~~~~
/usr/include/c++/11/system_error:376:37: note:   no known conversion for argument 1 from ‘const PredicateVar’ to ‘const std::error_condition&’
  376 |   operator==(const error_condition& __lhs,
      |              ~~~~~~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:408:3: note: candidate: ‘bool std::operator==(const std::error_condition&, const std::error_code&)’
  408 |   operator==(const error_condition& __lhs, const error_code& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:408:37: note:   no known conversion for argument 1 from ‘const PredicateVar’ to ‘const std::error_condition&’
  408 |   operator==(const error_condition& __lhs, const error_code& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~~~~~~^~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2380,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/variant:1256:18: note: candidate: ‘constexpr bool std::operator==(std::monostate, std::monostate)’
 1256 |   constexpr bool operator==(monostate, monostate) noexcept { return true; }
      |                  ^~~~~~~~
/usr/include/c++/11/variant:1256:29: note:   no known conversion for argument 1 from ‘const PredicateVar’ to ‘std::monostate’
 1256 |   constexpr bool operator==(monostate, monostate) noexcept { return true; }
      |                             ^~~~~~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h: In instantiation of ‘constexpr bool std::equal_to<_Tp>::operator()(const _Tp&, const _Tp&) const [with _Tp = Variable]’:
/usr/include/c++/11/bits/hashtable_policy.h:1617:39:   required from ‘bool std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::_M_equals(const _Key&, std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::__hash_code, const std::__detail::_Hash_node_value<_Value, typename _Traits::__hash_cached::value>&) const [with _Key = Variable; _Value = std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<Variable>; _Hash = std::hash<Variable>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::__hash_code = long unsigned int; typename _Traits::__hash_cached = std::__detail::_Hashtable_traits<true, false, true>::__hash_cached]’
/usr/include/c++/11/bits/hashtable.h:1840:23:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_base_ptr std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_M_find_before_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type, const key_type&, std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code) const [with _Key = Variable; _Value = std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >; _Alloc = std::allocator<std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > > >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<Variable>; _Hash = std::hash<Variable>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_base_ptr = std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >, true> > >::__node_base*; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type = long unsigned int; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::key_type = Variable; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code = long unsigned int]’
/usr/include/c++/11/bits/hashtable.h:810:31:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_ptr std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_M_find_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type, const key_type&, std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code) const [with _Key = Variable; _Value = std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >; _Alloc = std::allocator<std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > > >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<Variable>; _Hash = std::hash<Variable>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_ptr = std::allocator<std::__detail::_Hash_node<std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >, true> >::value_type*; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type = long unsigned int; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::key_type = Variable; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code = long unsigned int]’
/usr/include/c++/11/bits/hashtable_policy.h:704:42:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = Variable; _Pair = std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >; _Alloc = std::allocator<std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > > >; _Equal = std::equal_to<Variable>; _Hash = std::hash<Variable>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = std::pair<std::__cxx11::basic_string<char>, std::vector<Type> >; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = Variable]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = Variable; _Tp = std::pair<std::__cxx11::basic_string<char>, std::vector<Type> >; _Hash = std::hash<Variable>; _Pred = std::equal_to<Variable>; _Alloc = std::allocator<std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > > >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = std::pair<std::__cxx11::basic_string<char>, std::vector<Type> >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = Variable]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:172:32:   required from here
/usr/include/c++/11/bits/stl_function.h:370:20: error: no match for ‘operator==’ (operand types are ‘const Variable’ and ‘const Variable’)
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:171:10: note: candidate: ‘bool Variable::operator==(const Variable&)’ (near match)
  171 |     bool operator==(Variable const& other) {
      |          ^~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:171:10: note:   passing ‘const Variable*’ as ‘this’ argument discards qualifiers
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:466:5: note: candidate: ‘template<class _T1, class _T2> constexpr bool std::operator==(const std::pair<_T1, _T2>&, const std::pair<_T1, _T2>&)’
  466 |     operator==(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_pair.h:466:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::pair<_T1, _T2>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:419:5: note: candidate: ‘template<class _Iterator> constexpr bool std::operator==(const std::reverse_iterator<_Iterator>&, const std::reverse_iterator<_Iterator>&)’
  419 |     operator==(const reverse_iterator<_Iterator>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:419:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::reverse_iterator<_Iterator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:458:5: note: candidate: ‘template<class _IteratorL, class _IteratorR> constexpr bool std::operator==(const std::reverse_iterator<_Iterator>&, const std::reverse_iterator<_IteratorR>&)’
  458 |     operator==(const reverse_iterator<_IteratorL>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:458:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::reverse_iterator<_Iterator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:1533:5: note: candidate: ‘template<class _IteratorL, class _IteratorR> constexpr bool std::operator==(const std::move_iterator<_IteratorL>&, const std::move_iterator<_IteratorR>&)’
 1533 |     operator==(const move_iterator<_IteratorL>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:1533:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::move_iterator<_IteratorL>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:1601:5: note: candidate: ‘template<class _Iterator> constexpr bool std::operator==(const std::move_iterator<_IteratorL>&, const std::move_iterator<_IteratorL>&)’
 1601 |     operator==(const move_iterator<_Iterator>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:1601:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::move_iterator<_IteratorL>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/allocator.h:218:5: note: candidate: ‘template<class _T1, class _T2> bool std::operator==(const std::allocator<_Tp1>&, const std::allocator<_T2>&)’
  218 |     operator==(const allocator<_T1>&, const allocator<_T2>&)
      |     ^~~~~~~~
/usr/include/c++/11/bits/allocator.h:218:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::allocator<_Tp1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/tuple:39,
                 from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/array:276:5: note: candidate: ‘template<class _Tp, long unsigned int _Nm> bool std::operator==(const std::array<_Tp, _Nm>&, const std::array<_Tp, _Nm>&)’
  276 |     operator==(const array<_Tp, _Nm>& __one, const array<_Tp, _Nm>& __two)
      |     ^~~~~~~~
/usr/include/c++/11/array:276:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::array<_Tp, _Nm>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/tuple:1528:5: note: candidate: ‘template<class ... _TElements, class ... _UElements> constexpr bool std::operator==(const std::tuple<_Tps ...>&, const std::tuple<_UTypes ...>&)’
 1528 |     operator==(const tuple<_TElements...>& __t,
      |     ^~~~~~~~
/usr/include/c++/11/tuple:1528:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::tuple<_Tps ...>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:753:5: note: candidate: ‘template<class _Tp, class _Dp, class _Up, class _Ep> bool std::operator==(const std::unique_ptr<_Tp, _Dp>&, const std::unique_ptr<_Up, _Ep>&)’
  753 |     operator==(const unique_ptr<_Tp, _Dp>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:753:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:760:5: note: candidate: ‘template<class _Tp, class _Dp> bool std::operator==(const std::unique_ptr<_Tp, _Dp>&, std::nullptr_t)’
  760 |     operator==(const unique_ptr<_Tp, _Dp>& __x, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:760:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:767:5: note: candidate: ‘template<class _Tp, class _Dp> bool std::operator==(std::nullptr_t, const std::unique_ptr<_Tp, _Dp>&)’
  767 |     operator==(nullptr_t, const unique_ptr<_Tp, _Dp>& __x) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:767:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/iosfwd:40,
                 from /usr/include/c++/11/bits/shared_ptr.h:52,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/postypes.h:222:5: note: candidate: ‘template<class _StateT> bool std::operator==(const std::fpos<_StateT>&, const std::fpos<_StateT>&)’
  222 |     operator==(const fpos<_StateT>& __lhs, const fpos<_StateT>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/bits/postypes.h:222:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::fpos<_StateT>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1410:5: note: candidate: ‘template<class _Tp1, class _Tp2, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(const std::__shared_ptr<_Tp1, _Lp>&, const std::__shared_ptr<_Tp2, _Lp>&)’
 1410 |     operator==(const __shared_ptr<_Tp1, _Lp>& __a,
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1410:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::__shared_ptr<_Tp1, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1416:5: note: candidate: ‘template<class _Tp, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(const std::__shared_ptr<_Tp, _Lp>&, std::nullptr_t)’
 1416 |     operator==(const __shared_ptr<_Tp, _Lp>& __a, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1416:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::__shared_ptr<_Tp, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1436:5: note: candidate: ‘template<class _Tp, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(std::nullptr_t, const std::__shared_ptr<_Tp, _Lp>&)’
 1436 |     operator==(nullptr_t, const __shared_ptr<_Tp, _Lp>& __a) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1436:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::__shared_ptr<_Tp, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:437:5: note: candidate: ‘template<class _Tp, class _Up> bool std::operator==(const std::shared_ptr<_Tp>&, const std::shared_ptr<_Tp>&)’
  437 |     operator==(const shared_ptr<_Tp>& __a, const shared_ptr<_Up>& __b) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:437:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:443:5: note: candidate: ‘template<class _Tp> bool std::operator==(const std::shared_ptr<_Tp>&, std::nullptr_t)’
  443 |     operator==(const shared_ptr<_Tp>& __a, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:443:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:464:5: note: candidate: ‘template<class _Tp> bool std::operator==(std::nullptr_t, const std::shared_ptr<_Tp>&)’
  464 |     operator==(nullptr_t, const shared_ptr<_Tp>& __a) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:464:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:535:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::basic_string_view<_CharT, _Traits>, std::basic_string_view<_CharT, _Traits>)’
  535 |     operator==(basic_string_view<_CharT, _Traits> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:535:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘Variable’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:541:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::basic_string_view<_CharT, _Traits>, std::__type_identity_t<std::basic_string_view<_CharT, _Traits> >)’
  541 |     operator==(basic_string_view<_CharT, _Traits> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:541:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘Variable’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:564:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::__type_identity_t<std::basic_string_view<_CharT, _Traits> >, std::basic_string_view<_CharT, _Traits>)’
  564 |     operator==(__type_identity_t<basic_string_view<_CharT, _Traits>> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:564:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘Variable’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6226:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&, const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&)’
 6226 |     operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6226:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6234:5: note: candidate: ‘template<class _CharT> typename __gnu_cxx::__enable_if<std::__is_char<_Tp>::__value, bool>::__type std::operator==(const std::__cxx11::basic_string<_CharT>&, const std::__cxx11::basic_string<_CharT>&)’
 6234 |     operator==(const basic_string<_CharT>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6234:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::__cxx11::basic_string<_CharT>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6248:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&, const _CharT*)’
 6248 |     operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6248:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6289:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const _CharT*, const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&)’
 6289 |     operator==(const _CharT* __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6289:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   mismatched types ‘const _CharT*’ and ‘Variable’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/locale_facets.h:48,
                 from /usr/include/c++/11/bits/basic_ios.h:37,
                 from /usr/include/c++/11/ios:44,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/streambuf_iterator.h:226:5: note: candidate: ‘template<class _CharT, class _Traits> bool std::operator==(const std::istreambuf_iterator<_CharT, _Traits>&, const std::istreambuf_iterator<_CharT, _Traits>&)’
  226 |     operator==(const istreambuf_iterator<_CharT, _Traits>& __a,
      |     ^~~~~~~~
/usr/include/c++/11/bits/streambuf_iterator.h:226:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::istreambuf_iterator<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/vector:67,
                 from /usr/include/gtest/gtest.h:60,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_vector.h:1892:5: note: candidate: ‘template<class _Tp, class _Alloc> bool std::operator==(const std::vector<_Tp, _Alloc>&, const std::vector<_Tp, _Alloc>&)’
 1892 |     operator==(const vector<_Tp, _Alloc>& __x, const vector<_Tp, _Alloc>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_vector.h:1892:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::vector<_Tp, _Alloc>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1045:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Tp, _Up> std::operator==(const std::optional<_Tp>&, const std::optional<_Up>&)’
 1045 |     operator==(const optional<_Tp>& __lhs, const optional<_Up>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1045:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1105:5: note: candidate: ‘template<class _Tp> constexpr bool std::operator==(const std::optional<_Tp>&, std::nullopt_t)’
 1105 |     operator==(const optional<_Tp>& __lhs, nullopt_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/optional:1105:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1116:5: note: candidate: ‘template<class _Tp> constexpr bool std::operator==(std::nullopt_t, const std::optional<_Tp>&)’
 1116 |     operator==(nullopt_t, const optional<_Tp>& __rhs) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/optional:1116:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1173:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Tp, _Up> std::operator==(const std::optional<_Tp>&, const _Up&)’
 1173 |     operator==(const optional<_Tp>& __lhs, const _Up& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1173:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1179:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Up, _Tp> std::operator==(const _Up&, const std::optional<_Tp>&)’
 1179 |     operator==(const _Up& __lhs, const optional<_Tp>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1179:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2380,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/variant:1249:3: note: candidate: ‘template<class ... _Types> constexpr bool std::operator==(const std::variant<_Types ...>&, const std::variant<_Types ...>&)’
 1249 |   _VARIANT_RELATION_FUNCTION_TEMPLATE(==, equal)
      |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/variant:1249:3: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::variant<_Types ...>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/map:61,
                 from /usr/include/gtest/internal/gtest-internal.h:59,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_map.h:1463:5: note: candidate: ‘template<class _Key, class _Tp, class _Compare, class _Alloc> bool std::operator==(const std::map<_Key, _Tp, _Compare, _Allocator>&, const std::map<_Key, _Tp, _Compare, _Allocator>&)’
 1463 |     operator==(const map<_Key, _Tp, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_map.h:1463:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::map<_Key, _Tp, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/map:62,
                 from /usr/include/gtest/internal/gtest-internal.h:59,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_multimap.h:1128:5: note: candidate: ‘template<class _Key, class _Tp, class _Compare, class _Alloc> bool std::operator==(const std::multimap<_Key, _Tp, _Compare, _Allocator>&, const std::multimap<_Key, _Tp, _Compare, _Allocator>&)’
 1128 |     operator==(const multimap<_Key, _Tp, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_multimap.h:1128:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::multimap<_Key, _Tp, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/set:61,
                 from /usr/include/gtest/internal/gtest-internal.h:60,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_set.h:985:5: note: candidate: ‘template<class _Key, class _Compare, class _Alloc> bool std::operator==(const std::set<_Key, _Compare, _Allocator>&, const std::set<_Key, _Compare, _Allocator>&)’
  985 |     operator==(const set<_Key, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_set.h:985:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::set<_Key, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/set:62,
                 from /usr/include/gtest/internal/gtest-internal.h:60,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_multiset.h:971:5: note: candidate: ‘template<class _Key, class _Compare, class _Alloc> bool std::operator==(const std::multiset<_Key, _Compare, _Allocator>&, const std::multiset<_Key, _Compare, _Allocator>&)’
  971 |     operator==(const multiset<_Key, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_multiset.h:971:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::multiset<_Key, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/functional:59,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/std_function.h:718:5: note: candidate: ‘template<class _Res, class ... _Args> bool std::operator==(const std::function<_Res(_ArgTypes ...)>&, std::nullptr_t)’
  718 |     operator==(const function<_Res(_Args...)>& __f, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/std_function.h:718:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::function<_Res(_ArgTypes ...)>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/functional:59,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/std_function.h:725:5: note: candidate: ‘template<class _Res, class ... _Args> bool std::operator==(std::nullptr_t, const std::function<_Res(_ArgTypes ...)>&)’
  725 |     operator==(nullptr_t, const function<_Res(_Args...)>& __f) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/std_function.h:725:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::function<_Res(_ArgTypes ...)>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/unordered_map:47,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unordered_map.h:2134:5: note: candidate: ‘template<class _Key1, class _Tp1, class _Hash1, class _Pred1, class _Alloc1> bool std::operator==(const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&, const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&)’
 2134 |     operator==(const unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unordered_map.h:2134:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/unordered_map:47,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unordered_map.h:2148:5: note: candidate: ‘template<class _Key1, class _Tp1, class _Hash1, class _Pred1, class _Alloc1> bool std::operator==(const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&, const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&)’
 2148 |     operator==(const unordered_multimap<_Key, _Tp, _Hash, _Pred, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unordered_map.h:2148:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/deque:67,
                 from /usr/include/c++/11/stack:60,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/lisp_iterators.h:7,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:10:
/usr/include/c++/11/bits/stl_deque.h:2246:5: note: candidate: ‘template<class _Tp, class _Alloc> bool std::operator==(const std::deque<_Tp, _Alloc>&, const std::deque<_Tp, _Alloc>&)’
 2246 |     operator==(const deque<_Tp, _Alloc>& __x, const deque<_Tp, _Alloc>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_deque.h:2246:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::deque<_Tp, _Alloc>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/stack:61,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/lisp_iterators.h:7,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:10:
/usr/include/c++/11/bits/stl_stack.h:319:5: note: candidate: ‘template<class _Tp, class _Seq> bool std::operator==(const std::stack<_Tp, _Seq>&, const std::stack<_Tp, _Seq>&)’
  319 |     operator==(const stack<_Tp, _Seq>& __x, const stack<_Tp, _Seq>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_stack.h:319:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const Variable’ is not derived from ‘const std::stack<_Tp, _Seq>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/ios_base.h:46,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/system_error:362:3: note: candidate: ‘bool std::operator==(const std::error_code&, const std::error_code&)’
  362 |   operator==(const error_code& __lhs, const error_code& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:362:32: note:   no known conversion for argument 1 from ‘const Variable’ to ‘const std::error_code&’
  362 |   operator==(const error_code& __lhs, const error_code& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:368:3: note: candidate: ‘bool std::operator==(const std::error_code&, const std::error_condition&)’
  368 |   operator==(const error_code& __lhs, const error_condition& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:368:32: note:   no known conversion for argument 1 from ‘const Variable’ to ‘const std::error_code&’
  368 |   operator==(const error_code& __lhs, const error_condition& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:376:3: note: candidate: ‘bool std::operator==(const std::error_condition&, const std::error_condition&)’
  376 |   operator==(const error_condition& __lhs,
      |   ^~~~~~~~
/usr/include/c++/11/system_error:376:37: note:   no known conversion for argument 1 from ‘const Variable’ to ‘const std::error_condition&’
  376 |   operator==(const error_condition& __lhs,
      |              ~~~~~~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:408:3: note: candidate: ‘bool std::operator==(const std::error_condition&, const std::error_code&)’
  408 |   operator==(const error_condition& __lhs, const error_code& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:408:37: note:   no known conversion for argument 1 from ‘const Variable’ to ‘const std::error_condition&’
  408 |   operator==(const error_condition& __lhs, const error_code& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~~~~~~^~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2380,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/variant:1256:18: note: candidate: ‘constexpr bool std::operator==(std::monostate, std::monostate)’
 1256 |   constexpr bool operator==(monostate, monostate) noexcept { return true; }
      |                  ^~~~~~~~
/usr/include/c++/11/variant:1256:29: note:   no known conversion for argument 1 from ‘const Variable’ to ‘std::monostate’
 1256 |   constexpr bool operator==(monostate, monostate) noexcept { return true; }
      |                             ^~~~~~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h: In instantiation of ‘constexpr bool std::equal_to<_Tp>::operator()(const _Tp&, const _Tp&) const [with _Tp = PreconditionStmt]’:
/usr/include/c++/11/bits/hashtable_policy.h:1617:39:   required from ‘bool std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::_M_equals(const _Key&, std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::__hash_code, const std::__detail::_Hash_node_value<_Value, typename _Traits::__hash_cached::value>&) const [with _Key = PreconditionStmt; _Value = std::pair<const PreconditionStmt, std::vector<Predicate> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<PreconditionStmt>; _Hash = std::hash<PreconditionStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::__hash_code = long unsigned int; typename _Traits::__hash_cached = std::__detail::_Hashtable_traits<true, false, true>::__hash_cached]’
/usr/include/c++/11/bits/hashtable.h:1840:23:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_base_ptr std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_M_find_before_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type, const key_type&, std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code) const [with _Key = PreconditionStmt; _Value = std::pair<const PreconditionStmt, std::vector<Predicate> >; _Alloc = std::allocator<std::pair<const PreconditionStmt, std::vector<Predicate> > >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<PreconditionStmt>; _Hash = std::hash<PreconditionStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_base_ptr = std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<const PreconditionStmt, std::vector<Predicate> >, true> > >::__node_base*; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type = long unsigned int; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::key_type = PreconditionStmt; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code = long unsigned int]’
/usr/include/c++/11/bits/hashtable.h:810:31:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_ptr std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_M_find_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type, const key_type&, std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code) const [with _Key = PreconditionStmt; _Value = std::pair<const PreconditionStmt, std::vector<Predicate> >; _Alloc = std::allocator<std::pair<const PreconditionStmt, std::vector<Predicate> > >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<PreconditionStmt>; _Hash = std::hash<PreconditionStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_ptr = std::allocator<std::__detail::_Hash_node<std::pair<const PreconditionStmt, std::vector<Predicate> >, true> >::value_type*; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type = long unsigned int; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::key_type = PreconditionStmt; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code = long unsigned int]’
/usr/include/c++/11/bits/hashtable_policy.h:704:42:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = PreconditionStmt; _Pair = std::pair<const PreconditionStmt, std::vector<Predicate> >; _Alloc = std::allocator<std::pair<const PreconditionStmt, std::vector<Predicate> > >; _Equal = std::equal_to<PreconditionStmt>; _Hash = std::hash<PreconditionStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = std::vector<Predicate>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = PreconditionStmt]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = PreconditionStmt; _Tp = std::vector<Predicate>; _Hash = std::hash<PreconditionStmt>; _Pred = std::equal_to<PreconditionStmt>; _Alloc = std::allocator<std::pair<const PreconditionStmt, std::vector<Predicate> > >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = std::vector<Predicate>; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = PreconditionStmt]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:214:68:   required from here
/usr/include/c++/11/bits/stl_function.h:370:20: error: no match for ‘operator==’ (operand types are ‘const PreconditionStmt’ and ‘const PreconditionStmt’)
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:266:10: note: candidate: ‘bool PreconditionStmt::operator==(const PreconditionStmt&)’ (near match)
  266 |     bool operator==(PreconditionStmt const& other) {
      |          ^~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:266:10: note:   passing ‘const PreconditionStmt*’ as ‘this’ argument discards qualifiers
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:466:5: note: candidate: ‘template<class _T1, class _T2> constexpr bool std::operator==(const std::pair<_T1, _T2>&, const std::pair<_T1, _T2>&)’
  466 |     operator==(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_pair.h:466:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::pair<_T1, _T2>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:419:5: note: candidate: ‘template<class _Iterator> constexpr bool std::operator==(const std::reverse_iterator<_Iterator>&, const std::reverse_iterator<_Iterator>&)’
  419 |     operator==(const reverse_iterator<_Iterator>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:419:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::reverse_iterator<_Iterator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:458:5: note: candidate: ‘template<class _IteratorL, class _IteratorR> constexpr bool std::operator==(const std::reverse_iterator<_Iterator>&, const std::reverse_iterator<_IteratorR>&)’
  458 |     operator==(const reverse_iterator<_IteratorL>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:458:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::reverse_iterator<_Iterator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:1533:5: note: candidate: ‘template<class _IteratorL, class _IteratorR> constexpr bool std::operator==(const std::move_iterator<_IteratorL>&, const std::move_iterator<_IteratorR>&)’
 1533 |     operator==(const move_iterator<_IteratorL>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:1533:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::move_iterator<_IteratorL>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:1601:5: note: candidate: ‘template<class _Iterator> constexpr bool std::operator==(const std::move_iterator<_IteratorL>&, const std::move_iterator<_IteratorL>&)’
 1601 |     operator==(const move_iterator<_Iterator>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:1601:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::move_iterator<_IteratorL>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/allocator.h:218:5: note: candidate: ‘template<class _T1, class _T2> bool std::operator==(const std::allocator<_Tp1>&, const std::allocator<_T2>&)’
  218 |     operator==(const allocator<_T1>&, const allocator<_T2>&)
      |     ^~~~~~~~
/usr/include/c++/11/bits/allocator.h:218:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::allocator<_Tp1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/tuple:39,
                 from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/array:276:5: note: candidate: ‘template<class _Tp, long unsigned int _Nm> bool std::operator==(const std::array<_Tp, _Nm>&, const std::array<_Tp, _Nm>&)’
  276 |     operator==(const array<_Tp, _Nm>& __one, const array<_Tp, _Nm>& __two)
      |     ^~~~~~~~
/usr/include/c++/11/array:276:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::array<_Tp, _Nm>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/tuple:1528:5: note: candidate: ‘template<class ... _TElements, class ... _UElements> constexpr bool std::operator==(const std::tuple<_Tps ...>&, const std::tuple<_UTypes ...>&)’
 1528 |     operator==(const tuple<_TElements...>& __t,
      |     ^~~~~~~~
/usr/include/c++/11/tuple:1528:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::tuple<_Tps ...>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:753:5: note: candidate: ‘template<class _Tp, class _Dp, class _Up, class _Ep> bool std::operator==(const std::unique_ptr<_Tp, _Dp>&, const std::unique_ptr<_Up, _Ep>&)’
  753 |     operator==(const unique_ptr<_Tp, _Dp>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:753:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:760:5: note: candidate: ‘template<class _Tp, class _Dp> bool std::operator==(const std::unique_ptr<_Tp, _Dp>&, std::nullptr_t)’
  760 |     operator==(const unique_ptr<_Tp, _Dp>& __x, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:760:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:767:5: note: candidate: ‘template<class _Tp, class _Dp> bool std::operator==(std::nullptr_t, const std::unique_ptr<_Tp, _Dp>&)’
  767 |     operator==(nullptr_t, const unique_ptr<_Tp, _Dp>& __x) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:767:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/iosfwd:40,
                 from /usr/include/c++/11/bits/shared_ptr.h:52,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/postypes.h:222:5: note: candidate: ‘template<class _StateT> bool std::operator==(const std::fpos<_StateT>&, const std::fpos<_StateT>&)’
  222 |     operator==(const fpos<_StateT>& __lhs, const fpos<_StateT>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/bits/postypes.h:222:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::fpos<_StateT>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1410:5: note: candidate: ‘template<class _Tp1, class _Tp2, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(const std::__shared_ptr<_Tp1, _Lp>&, const std::__shared_ptr<_Tp2, _Lp>&)’
 1410 |     operator==(const __shared_ptr<_Tp1, _Lp>& __a,
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1410:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::__shared_ptr<_Tp1, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1416:5: note: candidate: ‘template<class _Tp, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(const std::__shared_ptr<_Tp, _Lp>&, std::nullptr_t)’
 1416 |     operator==(const __shared_ptr<_Tp, _Lp>& __a, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1416:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::__shared_ptr<_Tp, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1436:5: note: candidate: ‘template<class _Tp, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(std::nullptr_t, const std::__shared_ptr<_Tp, _Lp>&)’
 1436 |     operator==(nullptr_t, const __shared_ptr<_Tp, _Lp>& __a) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1436:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::__shared_ptr<_Tp, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:437:5: note: candidate: ‘template<class _Tp, class _Up> bool std::operator==(const std::shared_ptr<_Tp>&, const std::shared_ptr<_Tp>&)’
  437 |     operator==(const shared_ptr<_Tp>& __a, const shared_ptr<_Up>& __b) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:437:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:443:5: note: candidate: ‘template<class _Tp> bool std::operator==(const std::shared_ptr<_Tp>&, std::nullptr_t)’
  443 |     operator==(const shared_ptr<_Tp>& __a, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:443:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:464:5: note: candidate: ‘template<class _Tp> bool std::operator==(std::nullptr_t, const std::shared_ptr<_Tp>&)’
  464 |     operator==(nullptr_t, const shared_ptr<_Tp>& __a) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:464:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:535:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::basic_string_view<_CharT, _Traits>, std::basic_string_view<_CharT, _Traits>)’
  535 |     operator==(basic_string_view<_CharT, _Traits> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:535:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘PreconditionStmt’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:541:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::basic_string_view<_CharT, _Traits>, std::__type_identity_t<std::basic_string_view<_CharT, _Traits> >)’
  541 |     operator==(basic_string_view<_CharT, _Traits> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:541:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘PreconditionStmt’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:564:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::__type_identity_t<std::basic_string_view<_CharT, _Traits> >, std::basic_string_view<_CharT, _Traits>)’
  564 |     operator==(__type_identity_t<basic_string_view<_CharT, _Traits>> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:564:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘PreconditionStmt’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6226:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&, const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&)’
 6226 |     operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6226:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6234:5: note: candidate: ‘template<class _CharT> typename __gnu_cxx::__enable_if<std::__is_char<_Tp>::__value, bool>::__type std::operator==(const std::__cxx11::basic_string<_CharT>&, const std::__cxx11::basic_string<_CharT>&)’
 6234 |     operator==(const basic_string<_CharT>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6234:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::__cxx11::basic_string<_CharT>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6248:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&, const _CharT*)’
 6248 |     operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6248:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6289:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const _CharT*, const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&)’
 6289 |     operator==(const _CharT* __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6289:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   mismatched types ‘const _CharT*’ and ‘PreconditionStmt’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/locale_facets.h:48,
                 from /usr/include/c++/11/bits/basic_ios.h:37,
                 from /usr/include/c++/11/ios:44,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/streambuf_iterator.h:226:5: note: candidate: ‘template<class _CharT, class _Traits> bool std::operator==(const std::istreambuf_iterator<_CharT, _Traits>&, const std::istreambuf_iterator<_CharT, _Traits>&)’
  226 |     operator==(const istreambuf_iterator<_CharT, _Traits>& __a,
      |     ^~~~~~~~
/usr/include/c++/11/bits/streambuf_iterator.h:226:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::istreambuf_iterator<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/vector:67,
                 from /usr/include/gtest/gtest.h:60,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_vector.h:1892:5: note: candidate: ‘template<class _Tp, class _Alloc> bool std::operator==(const std::vector<_Tp, _Alloc>&, const std::vector<_Tp, _Alloc>&)’
 1892 |     operator==(const vector<_Tp, _Alloc>& __x, const vector<_Tp, _Alloc>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_vector.h:1892:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::vector<_Tp, _Alloc>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1045:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Tp, _Up> std::operator==(const std::optional<_Tp>&, const std::optional<_Up>&)’
 1045 |     operator==(const optional<_Tp>& __lhs, const optional<_Up>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1045:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1105:5: note: candidate: ‘template<class _Tp> constexpr bool std::operator==(const std::optional<_Tp>&, std::nullopt_t)’
 1105 |     operator==(const optional<_Tp>& __lhs, nullopt_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/optional:1105:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1116:5: note: candidate: ‘template<class _Tp> constexpr bool std::operator==(std::nullopt_t, const std::optional<_Tp>&)’
 1116 |     operator==(nullopt_t, const optional<_Tp>& __rhs) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/optional:1116:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1173:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Tp, _Up> std::operator==(const std::optional<_Tp>&, const _Up&)’
 1173 |     operator==(const optional<_Tp>& __lhs, const _Up& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1173:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1179:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Up, _Tp> std::operator==(const _Up&, const std::optional<_Tp>&)’
 1179 |     operator==(const _Up& __lhs, const optional<_Tp>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1179:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2380,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/variant:1249:3: note: candidate: ‘template<class ... _Types> constexpr bool std::operator==(const std::variant<_Types ...>&, const std::variant<_Types ...>&)’
 1249 |   _VARIANT_RELATION_FUNCTION_TEMPLATE(==, equal)
      |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/variant:1249:3: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::variant<_Types ...>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/map:61,
                 from /usr/include/gtest/internal/gtest-internal.h:59,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_map.h:1463:5: note: candidate: ‘template<class _Key, class _Tp, class _Compare, class _Alloc> bool std::operator==(const std::map<_Key, _Tp, _Compare, _Allocator>&, const std::map<_Key, _Tp, _Compare, _Allocator>&)’
 1463 |     operator==(const map<_Key, _Tp, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_map.h:1463:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::map<_Key, _Tp, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/map:62,
                 from /usr/include/gtest/internal/gtest-internal.h:59,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_multimap.h:1128:5: note: candidate: ‘template<class _Key, class _Tp, class _Compare, class _Alloc> bool std::operator==(const std::multimap<_Key, _Tp, _Compare, _Allocator>&, const std::multimap<_Key, _Tp, _Compare, _Allocator>&)’
 1128 |     operator==(const multimap<_Key, _Tp, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_multimap.h:1128:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::multimap<_Key, _Tp, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/set:61,
                 from /usr/include/gtest/internal/gtest-internal.h:60,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_set.h:985:5: note: candidate: ‘template<class _Key, class _Compare, class _Alloc> bool std::operator==(const std::set<_Key, _Compare, _Allocator>&, const std::set<_Key, _Compare, _Allocator>&)’
  985 |     operator==(const set<_Key, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_set.h:985:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::set<_Key, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/set:62,
                 from /usr/include/gtest/internal/gtest-internal.h:60,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_multiset.h:971:5: note: candidate: ‘template<class _Key, class _Compare, class _Alloc> bool std::operator==(const std::multiset<_Key, _Compare, _Allocator>&, const std::multiset<_Key, _Compare, _Allocator>&)’
  971 |     operator==(const multiset<_Key, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_multiset.h:971:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::multiset<_Key, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/functional:59,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/std_function.h:718:5: note: candidate: ‘template<class _Res, class ... _Args> bool std::operator==(const std::function<_Res(_ArgTypes ...)>&, std::nullptr_t)’
  718 |     operator==(const function<_Res(_Args...)>& __f, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/std_function.h:718:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::function<_Res(_ArgTypes ...)>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/functional:59,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/std_function.h:725:5: note: candidate: ‘template<class _Res, class ... _Args> bool std::operator==(std::nullptr_t, const std::function<_Res(_ArgTypes ...)>&)’
  725 |     operator==(nullptr_t, const function<_Res(_Args...)>& __f) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/std_function.h:725:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::function<_Res(_ArgTypes ...)>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/unordered_map:47,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unordered_map.h:2134:5: note: candidate: ‘template<class _Key1, class _Tp1, class _Hash1, class _Pred1, class _Alloc1> bool std::operator==(const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&, const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&)’
 2134 |     operator==(const unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unordered_map.h:2134:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/unordered_map:47,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unordered_map.h:2148:5: note: candidate: ‘template<class _Key1, class _Tp1, class _Hash1, class _Pred1, class _Alloc1> bool std::operator==(const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&, const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&)’
 2148 |     operator==(const unordered_multimap<_Key, _Tp, _Hash, _Pred, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unordered_map.h:2148:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/deque:67,
                 from /usr/include/c++/11/stack:60,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/lisp_iterators.h:7,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:10:
/usr/include/c++/11/bits/stl_deque.h:2246:5: note: candidate: ‘template<class _Tp, class _Alloc> bool std::operator==(const std::deque<_Tp, _Alloc>&, const std::deque<_Tp, _Alloc>&)’
 2246 |     operator==(const deque<_Tp, _Alloc>& __x, const deque<_Tp, _Alloc>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_deque.h:2246:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::deque<_Tp, _Alloc>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/stack:61,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/lisp_iterators.h:7,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:10:
/usr/include/c++/11/bits/stl_stack.h:319:5: note: candidate: ‘template<class _Tp, class _Seq> bool std::operator==(const std::stack<_Tp, _Seq>&, const std::stack<_Tp, _Seq>&)’
  319 |     operator==(const stack<_Tp, _Seq>& __x, const stack<_Tp, _Seq>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_stack.h:319:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PreconditionStmt’ is not derived from ‘const std::stack<_Tp, _Seq>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/ios_base.h:46,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/system_error:362:3: note: candidate: ‘bool std::operator==(const std::error_code&, const std::error_code&)’
  362 |   operator==(const error_code& __lhs, const error_code& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:362:32: note:   no known conversion for argument 1 from ‘const PreconditionStmt’ to ‘const std::error_code&’
  362 |   operator==(const error_code& __lhs, const error_code& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:368:3: note: candidate: ‘bool std::operator==(const std::error_code&, const std::error_condition&)’
  368 |   operator==(const error_code& __lhs, const error_condition& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:368:32: note:   no known conversion for argument 1 from ‘const PreconditionStmt’ to ‘const std::error_code&’
  368 |   operator==(const error_code& __lhs, const error_condition& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:376:3: note: candidate: ‘bool std::operator==(const std::error_condition&, const std::error_condition&)’
  376 |   operator==(const error_condition& __lhs,
      |   ^~~~~~~~
/usr/include/c++/11/system_error:376:37: note:   no known conversion for argument 1 from ‘const PreconditionStmt’ to ‘const std::error_condition&’
  376 |   operator==(const error_condition& __lhs,
      |              ~~~~~~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:408:3: note: candidate: ‘bool std::operator==(const std::error_condition&, const std::error_code&)’
  408 |   operator==(const error_condition& __lhs, const error_code& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:408:37: note:   no known conversion for argument 1 from ‘const PreconditionStmt’ to ‘const std::error_condition&’
  408 |   operator==(const error_condition& __lhs, const error_code& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~~~~~~^~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2380,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/variant:1256:18: note: candidate: ‘constexpr bool std::operator==(std::monostate, std::monostate)’
 1256 |   constexpr bool operator==(monostate, monostate) noexcept { return true; }
      |                  ^~~~~~~~
/usr/include/c++/11/variant:1256:29: note:   no known conversion for argument 1 from ‘const PreconditionStmt’ to ‘std::monostate’
 1256 |   constexpr bool operator==(monostate, monostate) noexcept { return true; }
      |                             ^~~~~~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h: In instantiation of ‘constexpr bool std::equal_to<_Tp>::operator()(const _Tp&, const _Tp&) const [with _Tp = EffectStmt]’:
/usr/include/c++/11/bits/hashtable_policy.h:1617:39:   required from ‘bool std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::_M_equals(const _Key&, std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::__hash_code, const std::__detail::_Hash_node_value<_Value, typename _Traits::__hash_cached::value>&) const [with _Key = EffectStmt; _Value = std::pair<const EffectStmt, Effect>; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<EffectStmt>; _Hash = std::hash<EffectStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::__hash_code = long unsigned int; typename _Traits::__hash_cached = std::__detail::_Hashtable_traits<true, false, true>::__hash_cached]’
/usr/include/c++/11/bits/hashtable.h:1840:23:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_base_ptr std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_M_find_before_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type, const key_type&, std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code) const [with _Key = EffectStmt; _Value = std::pair<const EffectStmt, Effect>; _Alloc = std::allocator<std::pair<const EffectStmt, Effect> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<EffectStmt>; _Hash = std::hash<EffectStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_base_ptr = std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<const EffectStmt, Effect>, true> > >::__node_base*; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type = long unsigned int; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::key_type = EffectStmt; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code = long unsigned int]’
/usr/include/c++/11/bits/hashtable.h:810:31:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_ptr std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_M_find_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type, const key_type&, std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code) const [with _Key = EffectStmt; _Value = std::pair<const EffectStmt, Effect>; _Alloc = std::allocator<std::pair<const EffectStmt, Effect> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<EffectStmt>; _Hash = std::hash<EffectStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_ptr = std::allocator<std::__detail::_Hash_node<std::pair<const EffectStmt, Effect>, true> >::value_type*; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type = long unsigned int; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::key_type = EffectStmt; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code = long unsigned int]’
/usr/include/c++/11/bits/hashtable_policy.h:704:42:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = EffectStmt; _Pair = std::pair<const EffectStmt, Effect>; _Alloc = std::allocator<std::pair<const EffectStmt, Effect> >; _Equal = std::equal_to<EffectStmt>; _Hash = std::hash<EffectStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = Effect; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = EffectStmt]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = EffectStmt; _Tp = Effect; _Hash = std::hash<EffectStmt>; _Pred = std::equal_to<EffectStmt>; _Alloc = std::allocator<std::pair<const EffectStmt, Effect> >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = Effect; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = EffectStmt]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:217:49:   required from here
/usr/include/c++/11/bits/stl_function.h:370:20: error: no match for ‘operator==’ (operand types are ‘const EffectStmt’ and ‘const EffectStmt’)
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:282:10: note: candidate: ‘bool EffectStmt::operator==(const EffectStmt&)’ (near match)
  282 |     bool operator==(EffectStmt const& other) {
      |          ^~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:282:10: note:   passing ‘const EffectStmt*’ as ‘this’ argument discards qualifiers
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:466:5: note: candidate: ‘template<class _T1, class _T2> constexpr bool std::operator==(const std::pair<_T1, _T2>&, const std::pair<_T1, _T2>&)’
  466 |     operator==(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_pair.h:466:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::pair<_T1, _T2>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:419:5: note: candidate: ‘template<class _Iterator> constexpr bool std::operator==(const std::reverse_iterator<_Iterator>&, const std::reverse_iterator<_Iterator>&)’
  419 |     operator==(const reverse_iterator<_Iterator>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:419:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::reverse_iterator<_Iterator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:458:5: note: candidate: ‘template<class _IteratorL, class _IteratorR> constexpr bool std::operator==(const std::reverse_iterator<_Iterator>&, const std::reverse_iterator<_IteratorR>&)’
  458 |     operator==(const reverse_iterator<_IteratorL>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:458:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::reverse_iterator<_Iterator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:1533:5: note: candidate: ‘template<class _IteratorL, class _IteratorR> constexpr bool std::operator==(const std::move_iterator<_IteratorL>&, const std::move_iterator<_IteratorR>&)’
 1533 |     operator==(const move_iterator<_IteratorL>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:1533:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::move_iterator<_IteratorL>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:1601:5: note: candidate: ‘template<class _Iterator> constexpr bool std::operator==(const std::move_iterator<_IteratorL>&, const std::move_iterator<_IteratorL>&)’
 1601 |     operator==(const move_iterator<_Iterator>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:1601:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::move_iterator<_IteratorL>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/allocator.h:218:5: note: candidate: ‘template<class _T1, class _T2> bool std::operator==(const std::allocator<_Tp1>&, const std::allocator<_T2>&)’
  218 |     operator==(const allocator<_T1>&, const allocator<_T2>&)
      |     ^~~~~~~~
/usr/include/c++/11/bits/allocator.h:218:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::allocator<_Tp1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/tuple:39,
                 from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/array:276:5: note: candidate: ‘template<class _Tp, long unsigned int _Nm> bool std::operator==(const std::array<_Tp, _Nm>&, const std::array<_Tp, _Nm>&)’
  276 |     operator==(const array<_Tp, _Nm>& __one, const array<_Tp, _Nm>& __two)
      |     ^~~~~~~~
/usr/include/c++/11/array:276:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::array<_Tp, _Nm>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/tuple:1528:5: note: candidate: ‘template<class ... _TElements, class ... _UElements> constexpr bool std::operator==(const std::tuple<_Tps ...>&, const std::tuple<_UTypes ...>&)’
 1528 |     operator==(const tuple<_TElements...>& __t,
      |     ^~~~~~~~
/usr/include/c++/11/tuple:1528:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::tuple<_Tps ...>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:753:5: note: candidate: ‘template<class _Tp, class _Dp, class _Up, class _Ep> bool std::operator==(const std::unique_ptr<_Tp, _Dp>&, const std::unique_ptr<_Up, _Ep>&)’
  753 |     operator==(const unique_ptr<_Tp, _Dp>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:753:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:760:5: note: candidate: ‘template<class _Tp, class _Dp> bool std::operator==(const std::unique_ptr<_Tp, _Dp>&, std::nullptr_t)’
  760 |     operator==(const unique_ptr<_Tp, _Dp>& __x, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:760:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:767:5: note: candidate: ‘template<class _Tp, class _Dp> bool std::operator==(std::nullptr_t, const std::unique_ptr<_Tp, _Dp>&)’
  767 |     operator==(nullptr_t, const unique_ptr<_Tp, _Dp>& __x) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:767:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/iosfwd:40,
                 from /usr/include/c++/11/bits/shared_ptr.h:52,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/postypes.h:222:5: note: candidate: ‘template<class _StateT> bool std::operator==(const std::fpos<_StateT>&, const std::fpos<_StateT>&)’
  222 |     operator==(const fpos<_StateT>& __lhs, const fpos<_StateT>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/bits/postypes.h:222:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::fpos<_StateT>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1410:5: note: candidate: ‘template<class _Tp1, class _Tp2, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(const std::__shared_ptr<_Tp1, _Lp>&, const std::__shared_ptr<_Tp2, _Lp>&)’
 1410 |     operator==(const __shared_ptr<_Tp1, _Lp>& __a,
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1410:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::__shared_ptr<_Tp1, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1416:5: note: candidate: ‘template<class _Tp, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(const std::__shared_ptr<_Tp, _Lp>&, std::nullptr_t)’
 1416 |     operator==(const __shared_ptr<_Tp, _Lp>& __a, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1416:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::__shared_ptr<_Tp, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1436:5: note: candidate: ‘template<class _Tp, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(std::nullptr_t, const std::__shared_ptr<_Tp, _Lp>&)’
 1436 |     operator==(nullptr_t, const __shared_ptr<_Tp, _Lp>& __a) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1436:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::__shared_ptr<_Tp, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:437:5: note: candidate: ‘template<class _Tp, class _Up> bool std::operator==(const std::shared_ptr<_Tp>&, const std::shared_ptr<_Tp>&)’
  437 |     operator==(const shared_ptr<_Tp>& __a, const shared_ptr<_Up>& __b) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:437:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:443:5: note: candidate: ‘template<class _Tp> bool std::operator==(const std::shared_ptr<_Tp>&, std::nullptr_t)’
  443 |     operator==(const shared_ptr<_Tp>& __a, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:443:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:464:5: note: candidate: ‘template<class _Tp> bool std::operator==(std::nullptr_t, const std::shared_ptr<_Tp>&)’
  464 |     operator==(nullptr_t, const shared_ptr<_Tp>& __a) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:464:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:535:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::basic_string_view<_CharT, _Traits>, std::basic_string_view<_CharT, _Traits>)’
  535 |     operator==(basic_string_view<_CharT, _Traits> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:535:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘EffectStmt’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:541:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::basic_string_view<_CharT, _Traits>, std::__type_identity_t<std::basic_string_view<_CharT, _Traits> >)’
  541 |     operator==(basic_string_view<_CharT, _Traits> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:541:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘EffectStmt’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:564:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::__type_identity_t<std::basic_string_view<_CharT, _Traits> >, std::basic_string_view<_CharT, _Traits>)’
  564 |     operator==(__type_identity_t<basic_string_view<_CharT, _Traits>> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:564:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘EffectStmt’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6226:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&, const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&)’
 6226 |     operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6226:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6234:5: note: candidate: ‘template<class _CharT> typename __gnu_cxx::__enable_if<std::__is_char<_Tp>::__value, bool>::__type std::operator==(const std::__cxx11::basic_string<_CharT>&, const std::__cxx11::basic_string<_CharT>&)’
 6234 |     operator==(const basic_string<_CharT>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6234:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::__cxx11::basic_string<_CharT>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6248:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&, const _CharT*)’
 6248 |     operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6248:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6289:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const _CharT*, const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&)’
 6289 |     operator==(const _CharT* __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6289:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   mismatched types ‘const _CharT*’ and ‘EffectStmt’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/locale_facets.h:48,
                 from /usr/include/c++/11/bits/basic_ios.h:37,
                 from /usr/include/c++/11/ios:44,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/streambuf_iterator.h:226:5: note: candidate: ‘template<class _CharT, class _Traits> bool std::operator==(const std::istreambuf_iterator<_CharT, _Traits>&, const std::istreambuf_iterator<_CharT, _Traits>&)’
  226 |     operator==(const istreambuf_iterator<_CharT, _Traits>& __a,
      |     ^~~~~~~~
/usr/include/c++/11/bits/streambuf_iterator.h:226:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::istreambuf_iterator<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/vector:67,
                 from /usr/include/gtest/gtest.h:60,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_vector.h:1892:5: note: candidate: ‘template<class _Tp, class _Alloc> bool std::operator==(const std::vector<_Tp, _Alloc>&, const std::vector<_Tp, _Alloc>&)’
 1892 |     operator==(const vector<_Tp, _Alloc>& __x, const vector<_Tp, _Alloc>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_vector.h:1892:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::vector<_Tp, _Alloc>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1045:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Tp, _Up> std::operator==(const std::optional<_Tp>&, const std::optional<_Up>&)’
 1045 |     operator==(const optional<_Tp>& __lhs, const optional<_Up>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1045:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1105:5: note: candidate: ‘template<class _Tp> constexpr bool std::operator==(const std::optional<_Tp>&, std::nullopt_t)’
 1105 |     operator==(const optional<_Tp>& __lhs, nullopt_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/optional:1105:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1116:5: note: candidate: ‘template<class _Tp> constexpr bool std::operator==(std::nullopt_t, const std::optional<_Tp>&)’
 1116 |     operator==(nullopt_t, const optional<_Tp>& __rhs) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/optional:1116:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1173:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Tp, _Up> std::operator==(const std::optional<_Tp>&, const _Up&)’
 1173 |     operator==(const optional<_Tp>& __lhs, const _Up& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1173:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1179:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Up, _Tp> std::operator==(const _Up&, const std::optional<_Tp>&)’
 1179 |     operator==(const _Up& __lhs, const optional<_Tp>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1179:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2380,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/variant:1249:3: note: candidate: ‘template<class ... _Types> constexpr bool std::operator==(const std::variant<_Types ...>&, const std::variant<_Types ...>&)’
 1249 |   _VARIANT_RELATION_FUNCTION_TEMPLATE(==, equal)
      |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/variant:1249:3: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::variant<_Types ...>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/map:61,
                 from /usr/include/gtest/internal/gtest-internal.h:59,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_map.h:1463:5: note: candidate: ‘template<class _Key, class _Tp, class _Compare, class _Alloc> bool std::operator==(const std::map<_Key, _Tp, _Compare, _Allocator>&, const std::map<_Key, _Tp, _Compare, _Allocator>&)’
 1463 |     operator==(const map<_Key, _Tp, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_map.h:1463:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::map<_Key, _Tp, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/map:62,
                 from /usr/include/gtest/internal/gtest-internal.h:59,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_multimap.h:1128:5: note: candidate: ‘template<class _Key, class _Tp, class _Compare, class _Alloc> bool std::operator==(const std::multimap<_Key, _Tp, _Compare, _Allocator>&, const std::multimap<_Key, _Tp, _Compare, _Allocator>&)’
 1128 |     operator==(const multimap<_Key, _Tp, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_multimap.h:1128:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::multimap<_Key, _Tp, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/set:61,
                 from /usr/include/gtest/internal/gtest-internal.h:60,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_set.h:985:5: note: candidate: ‘template<class _Key, class _Compare, class _Alloc> bool std::operator==(const std::set<_Key, _Compare, _Allocator>&, const std::set<_Key, _Compare, _Allocator>&)’
  985 |     operator==(const set<_Key, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_set.h:985:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::set<_Key, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/set:62,
                 from /usr/include/gtest/internal/gtest-internal.h:60,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_multiset.h:971:5: note: candidate: ‘template<class _Key, class _Compare, class _Alloc> bool std::operator==(const std::multiset<_Key, _Compare, _Allocator>&, const std::multiset<_Key, _Compare, _Allocator>&)’
  971 |     operator==(const multiset<_Key, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_multiset.h:971:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::multiset<_Key, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/functional:59,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/std_function.h:718:5: note: candidate: ‘template<class _Res, class ... _Args> bool std::operator==(const std::function<_Res(_ArgTypes ...)>&, std::nullptr_t)’
  718 |     operator==(const function<_Res(_Args...)>& __f, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/std_function.h:718:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::function<_Res(_ArgTypes ...)>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/functional:59,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/std_function.h:725:5: note: candidate: ‘template<class _Res, class ... _Args> bool std::operator==(std::nullptr_t, const std::function<_Res(_ArgTypes ...)>&)’
  725 |     operator==(nullptr_t, const function<_Res(_Args...)>& __f) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/std_function.h:725:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::function<_Res(_ArgTypes ...)>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/unordered_map:47,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unordered_map.h:2134:5: note: candidate: ‘template<class _Key1, class _Tp1, class _Hash1, class _Pred1, class _Alloc1> bool std::operator==(const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&, const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&)’
 2134 |     operator==(const unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unordered_map.h:2134:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/unordered_map:47,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unordered_map.h:2148:5: note: candidate: ‘template<class _Key1, class _Tp1, class _Hash1, class _Pred1, class _Alloc1> bool std::operator==(const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&, const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&)’
 2148 |     operator==(const unordered_multimap<_Key, _Tp, _Hash, _Pred, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unordered_map.h:2148:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/deque:67,
                 from /usr/include/c++/11/stack:60,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/lisp_iterators.h:7,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:10:
/usr/include/c++/11/bits/stl_deque.h:2246:5: note: candidate: ‘template<class _Tp, class _Alloc> bool std::operator==(const std::deque<_Tp, _Alloc>&, const std::deque<_Tp, _Alloc>&)’
 2246 |     operator==(const deque<_Tp, _Alloc>& __x, const deque<_Tp, _Alloc>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_deque.h:2246:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::deque<_Tp, _Alloc>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/stack:61,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/lisp_iterators.h:7,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:10:
/usr/include/c++/11/bits/stl_stack.h:319:5: note: candidate: ‘template<class _Tp, class _Seq> bool std::operator==(const std::stack<_Tp, _Seq>&, const std::stack<_Tp, _Seq>&)’
  319 |     operator==(const stack<_Tp, _Seq>& __x, const stack<_Tp, _Seq>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_stack.h:319:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const EffectStmt’ is not derived from ‘const std::stack<_Tp, _Seq>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/ios_base.h:46,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/system_error:362:3: note: candidate: ‘bool std::operator==(const std::error_code&, const std::error_code&)’
  362 |   operator==(const error_code& __lhs, const error_code& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:362:32: note:   no known conversion for argument 1 from ‘const EffectStmt’ to ‘const std::error_code&’
  362 |   operator==(const error_code& __lhs, const error_code& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:368:3: note: candidate: ‘bool std::operator==(const std::error_code&, const std::error_condition&)’
  368 |   operator==(const error_code& __lhs, const error_condition& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:368:32: note:   no known conversion for argument 1 from ‘const EffectStmt’ to ‘const std::error_code&’
  368 |   operator==(const error_code& __lhs, const error_condition& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:376:3: note: candidate: ‘bool std::operator==(const std::error_condition&, const std::error_condition&)’
  376 |   operator==(const error_condition& __lhs,
      |   ^~~~~~~~
/usr/include/c++/11/system_error:376:37: note:   no known conversion for argument 1 from ‘const EffectStmt’ to ‘const std::error_condition&’
  376 |   operator==(const error_condition& __lhs,
      |              ~~~~~~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:408:3: note: candidate: ‘bool std::operator==(const std::error_condition&, const std::error_code&)’
  408 |   operator==(const error_condition& __lhs, const error_code& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:408:37: note:   no known conversion for argument 1 from ‘const EffectStmt’ to ‘const std::error_condition&’
  408 |   operator==(const error_condition& __lhs, const error_code& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~~~~~~^~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2380,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/variant:1256:18: note: candidate: ‘constexpr bool std::operator==(std::monostate, std::monostate)’
 1256 |   constexpr bool operator==(monostate, monostate) noexcept { return true; }
      |                  ^~~~~~~~
/usr/include/c++/11/variant:1256:29: note:   no known conversion for argument 1 from ‘const EffectStmt’ to ‘std::monostate’
 1256 |   constexpr bool operator==(monostate, monostate) noexcept { return true; }
      |                             ^~~~~~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h: In instantiation of ‘constexpr bool std::equal_to<_Tp>::operator()(const _Tp&, const _Tp&) const [with _Tp = ActionStmt]’:
/usr/include/c++/11/bits/hashtable_policy.h:1617:39:   required from ‘bool std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::_M_equals(const _Key&, std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::__hash_code, const std::__detail::_Hash_node_value<_Value, typename _Traits::__hash_cached::value>&) const [with _Key = ActionStmt; _Value = std::pair<const ActionStmt, Action>; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<ActionStmt>; _Hash = std::hash<ActionStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::__hash_code = long unsigned int; typename _Traits::__hash_cached = std::__detail::_Hashtable_traits<true, false, true>::__hash_cached]’
/usr/include/c++/11/bits/hashtable.h:1840:23:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_base_ptr std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_M_find_before_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type, const key_type&, std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code) const [with _Key = ActionStmt; _Value = std::pair<const ActionStmt, Action>; _Alloc = std::allocator<std::pair<const ActionStmt, Action> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<ActionStmt>; _Hash = std::hash<ActionStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_base_ptr = std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<const ActionStmt, Action>, true> > >::__node_base*; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type = long unsigned int; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::key_type = ActionStmt; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code = long unsigned int]’
/usr/include/c++/11/bits/hashtable.h:810:31:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_ptr std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_M_find_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type, const key_type&, std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code) const [with _Key = ActionStmt; _Value = std::pair<const ActionStmt, Action>; _Alloc = std::allocator<std::pair<const ActionStmt, Action> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<ActionStmt>; _Hash = std::hash<ActionStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_ptr = std::allocator<std::__detail::_Hash_node<std::pair<const ActionStmt, Action>, true> >::value_type*; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type = long unsigned int; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::key_type = ActionStmt; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code = long unsigned int]’
/usr/include/c++/11/bits/hashtable_policy.h:704:42:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = ActionStmt; _Pair = std::pair<const ActionStmt, Action>; _Alloc = std::allocator<std::pair<const ActionStmt, Action> >; _Equal = std::equal_to<ActionStmt>; _Hash = std::hash<ActionStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = Action; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = ActionStmt]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = ActionStmt; _Tp = Action; _Hash = std::hash<ActionStmt>; _Pred = std::equal_to<ActionStmt>; _Alloc = std::allocator<std::pair<const ActionStmt, Action> >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = Action; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = ActionStmt]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:219:30:   required from here
/usr/include/c++/11/bits/stl_function.h:370:20: error: no match for ‘operator==’ (operand types are ‘const ActionStmt’ and ‘const ActionStmt’)
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:314:10: note: candidate: ‘bool ActionStmt::operator==(const ActionStmt&)’ (near match)
  314 |     bool operator==(ActionStmt const& other) {
      |          ^~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:314:10: note:   passing ‘const ActionStmt*’ as ‘this’ argument discards qualifiers
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:466:5: note: candidate: ‘template<class _T1, class _T2> constexpr bool std::operator==(const std::pair<_T1, _T2>&, const std::pair<_T1, _T2>&)’
  466 |     operator==(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_pair.h:466:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::pair<_T1, _T2>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:419:5: note: candidate: ‘template<class _Iterator> constexpr bool std::operator==(const std::reverse_iterator<_Iterator>&, const std::reverse_iterator<_Iterator>&)’
  419 |     operator==(const reverse_iterator<_Iterator>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:419:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::reverse_iterator<_Iterator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:458:5: note: candidate: ‘template<class _IteratorL, class _IteratorR> constexpr bool std::operator==(const std::reverse_iterator<_Iterator>&, const std::reverse_iterator<_IteratorR>&)’
  458 |     operator==(const reverse_iterator<_IteratorL>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:458:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::reverse_iterator<_Iterator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:1533:5: note: candidate: ‘template<class _IteratorL, class _IteratorR> constexpr bool std::operator==(const std::move_iterator<_IteratorL>&, const std::move_iterator<_IteratorR>&)’
 1533 |     operator==(const move_iterator<_IteratorL>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:1533:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::move_iterator<_IteratorL>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:1601:5: note: candidate: ‘template<class _Iterator> constexpr bool std::operator==(const std::move_iterator<_IteratorL>&, const std::move_iterator<_IteratorL>&)’
 1601 |     operator==(const move_iterator<_Iterator>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:1601:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::move_iterator<_IteratorL>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/allocator.h:218:5: note: candidate: ‘template<class _T1, class _T2> bool std::operator==(const std::allocator<_Tp1>&, const std::allocator<_T2>&)’
  218 |     operator==(const allocator<_T1>&, const allocator<_T2>&)
      |     ^~~~~~~~
/usr/include/c++/11/bits/allocator.h:218:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::allocator<_Tp1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/tuple:39,
                 from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/array:276:5: note: candidate: ‘template<class _Tp, long unsigned int _Nm> bool std::operator==(const std::array<_Tp, _Nm>&, const std::array<_Tp, _Nm>&)’
  276 |     operator==(const array<_Tp, _Nm>& __one, const array<_Tp, _Nm>& __two)
      |     ^~~~~~~~
/usr/include/c++/11/array:276:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::array<_Tp, _Nm>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/tuple:1528:5: note: candidate: ‘template<class ... _TElements, class ... _UElements> constexpr bool std::operator==(const std::tuple<_Tps ...>&, const std::tuple<_UTypes ...>&)’
 1528 |     operator==(const tuple<_TElements...>& __t,
      |     ^~~~~~~~
/usr/include/c++/11/tuple:1528:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::tuple<_Tps ...>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:753:5: note: candidate: ‘template<class _Tp, class _Dp, class _Up, class _Ep> bool std::operator==(const std::unique_ptr<_Tp, _Dp>&, const std::unique_ptr<_Up, _Ep>&)’
  753 |     operator==(const unique_ptr<_Tp, _Dp>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:753:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:760:5: note: candidate: ‘template<class _Tp, class _Dp> bool std::operator==(const std::unique_ptr<_Tp, _Dp>&, std::nullptr_t)’
  760 |     operator==(const unique_ptr<_Tp, _Dp>& __x, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:760:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:767:5: note: candidate: ‘template<class _Tp, class _Dp> bool std::operator==(std::nullptr_t, const std::unique_ptr<_Tp, _Dp>&)’
  767 |     operator==(nullptr_t, const unique_ptr<_Tp, _Dp>& __x) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:767:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/iosfwd:40,
                 from /usr/include/c++/11/bits/shared_ptr.h:52,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/postypes.h:222:5: note: candidate: ‘template<class _StateT> bool std::operator==(const std::fpos<_StateT>&, const std::fpos<_StateT>&)’
  222 |     operator==(const fpos<_StateT>& __lhs, const fpos<_StateT>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/bits/postypes.h:222:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::fpos<_StateT>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1410:5: note: candidate: ‘template<class _Tp1, class _Tp2, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(const std::__shared_ptr<_Tp1, _Lp>&, const std::__shared_ptr<_Tp2, _Lp>&)’
 1410 |     operator==(const __shared_ptr<_Tp1, _Lp>& __a,
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1410:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::__shared_ptr<_Tp1, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1416:5: note: candidate: ‘template<class _Tp, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(const std::__shared_ptr<_Tp, _Lp>&, std::nullptr_t)’
 1416 |     operator==(const __shared_ptr<_Tp, _Lp>& __a, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1416:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::__shared_ptr<_Tp, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1436:5: note: candidate: ‘template<class _Tp, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(std::nullptr_t, const std::__shared_ptr<_Tp, _Lp>&)’
 1436 |     operator==(nullptr_t, const __shared_ptr<_Tp, _Lp>& __a) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1436:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::__shared_ptr<_Tp, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:437:5: note: candidate: ‘template<class _Tp, class _Up> bool std::operator==(const std::shared_ptr<_Tp>&, const std::shared_ptr<_Tp>&)’
  437 |     operator==(const shared_ptr<_Tp>& __a, const shared_ptr<_Up>& __b) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:437:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:443:5: note: candidate: ‘template<class _Tp> bool std::operator==(const std::shared_ptr<_Tp>&, std::nullptr_t)’
  443 |     operator==(const shared_ptr<_Tp>& __a, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:443:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:464:5: note: candidate: ‘template<class _Tp> bool std::operator==(std::nullptr_t, const std::shared_ptr<_Tp>&)’
  464 |     operator==(nullptr_t, const shared_ptr<_Tp>& __a) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:464:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:535:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::basic_string_view<_CharT, _Traits>, std::basic_string_view<_CharT, _Traits>)’
  535 |     operator==(basic_string_view<_CharT, _Traits> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:535:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘ActionStmt’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:541:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::basic_string_view<_CharT, _Traits>, std::__type_identity_t<std::basic_string_view<_CharT, _Traits> >)’
  541 |     operator==(basic_string_view<_CharT, _Traits> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:541:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘ActionStmt’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:564:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::__type_identity_t<std::basic_string_view<_CharT, _Traits> >, std::basic_string_view<_CharT, _Traits>)’
  564 |     operator==(__type_identity_t<basic_string_view<_CharT, _Traits>> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:564:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘ActionStmt’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6226:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&, const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&)’
 6226 |     operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6226:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6234:5: note: candidate: ‘template<class _CharT> typename __gnu_cxx::__enable_if<std::__is_char<_Tp>::__value, bool>::__type std::operator==(const std::__cxx11::basic_string<_CharT>&, const std::__cxx11::basic_string<_CharT>&)’
 6234 |     operator==(const basic_string<_CharT>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6234:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::__cxx11::basic_string<_CharT>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6248:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&, const _CharT*)’
 6248 |     operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6248:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6289:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const _CharT*, const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&)’
 6289 |     operator==(const _CharT* __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6289:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   mismatched types ‘const _CharT*’ and ‘ActionStmt’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/locale_facets.h:48,
                 from /usr/include/c++/11/bits/basic_ios.h:37,
                 from /usr/include/c++/11/ios:44,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/streambuf_iterator.h:226:5: note: candidate: ‘template<class _CharT, class _Traits> bool std::operator==(const std::istreambuf_iterator<_CharT, _Traits>&, const std::istreambuf_iterator<_CharT, _Traits>&)’
  226 |     operator==(const istreambuf_iterator<_CharT, _Traits>& __a,
      |     ^~~~~~~~
/usr/include/c++/11/bits/streambuf_iterator.h:226:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::istreambuf_iterator<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/vector:67,
                 from /usr/include/gtest/gtest.h:60,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_vector.h:1892:5: note: candidate: ‘template<class _Tp, class _Alloc> bool std::operator==(const std::vector<_Tp, _Alloc>&, const std::vector<_Tp, _Alloc>&)’
 1892 |     operator==(const vector<_Tp, _Alloc>& __x, const vector<_Tp, _Alloc>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_vector.h:1892:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::vector<_Tp, _Alloc>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1045:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Tp, _Up> std::operator==(const std::optional<_Tp>&, const std::optional<_Up>&)’
 1045 |     operator==(const optional<_Tp>& __lhs, const optional<_Up>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1045:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1105:5: note: candidate: ‘template<class _Tp> constexpr bool std::operator==(const std::optional<_Tp>&, std::nullopt_t)’
 1105 |     operator==(const optional<_Tp>& __lhs, nullopt_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/optional:1105:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1116:5: note: candidate: ‘template<class _Tp> constexpr bool std::operator==(std::nullopt_t, const std::optional<_Tp>&)’
 1116 |     operator==(nullopt_t, const optional<_Tp>& __rhs) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/optional:1116:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1173:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Tp, _Up> std::operator==(const std::optional<_Tp>&, const _Up&)’
 1173 |     operator==(const optional<_Tp>& __lhs, const _Up& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1173:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1179:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Up, _Tp> std::operator==(const _Up&, const std::optional<_Tp>&)’
 1179 |     operator==(const _Up& __lhs, const optional<_Tp>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1179:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2380,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/variant:1249:3: note: candidate: ‘template<class ... _Types> constexpr bool std::operator==(const std::variant<_Types ...>&, const std::variant<_Types ...>&)’
 1249 |   _VARIANT_RELATION_FUNCTION_TEMPLATE(==, equal)
      |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/variant:1249:3: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::variant<_Types ...>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/map:61,
                 from /usr/include/gtest/internal/gtest-internal.h:59,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_map.h:1463:5: note: candidate: ‘template<class _Key, class _Tp, class _Compare, class _Alloc> bool std::operator==(const std::map<_Key, _Tp, _Compare, _Allocator>&, const std::map<_Key, _Tp, _Compare, _Allocator>&)’
 1463 |     operator==(const map<_Key, _Tp, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_map.h:1463:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::map<_Key, _Tp, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/map:62,
                 from /usr/include/gtest/internal/gtest-internal.h:59,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_multimap.h:1128:5: note: candidate: ‘template<class _Key, class _Tp, class _Compare, class _Alloc> bool std::operator==(const std::multimap<_Key, _Tp, _Compare, _Allocator>&, const std::multimap<_Key, _Tp, _Compare, _Allocator>&)’
 1128 |     operator==(const multimap<_Key, _Tp, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_multimap.h:1128:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::multimap<_Key, _Tp, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/set:61,
                 from /usr/include/gtest/internal/gtest-internal.h:60,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_set.h:985:5: note: candidate: ‘template<class _Key, class _Compare, class _Alloc> bool std::operator==(const std::set<_Key, _Compare, _Allocator>&, const std::set<_Key, _Compare, _Allocator>&)’
  985 |     operator==(const set<_Key, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_set.h:985:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::set<_Key, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/set:62,
                 from /usr/include/gtest/internal/gtest-internal.h:60,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_multiset.h:971:5: note: candidate: ‘template<class _Key, class _Compare, class _Alloc> bool std::operator==(const std::multiset<_Key, _Compare, _Allocator>&, const std::multiset<_Key, _Compare, _Allocator>&)’
  971 |     operator==(const multiset<_Key, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_multiset.h:971:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::multiset<_Key, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/functional:59,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/std_function.h:718:5: note: candidate: ‘template<class _Res, class ... _Args> bool std::operator==(const std::function<_Res(_ArgTypes ...)>&, std::nullptr_t)’
  718 |     operator==(const function<_Res(_Args...)>& __f, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/std_function.h:718:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::function<_Res(_ArgTypes ...)>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/functional:59,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/std_function.h:725:5: note: candidate: ‘template<class _Res, class ... _Args> bool std::operator==(std::nullptr_t, const std::function<_Res(_ArgTypes ...)>&)’
  725 |     operator==(nullptr_t, const function<_Res(_Args...)>& __f) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/std_function.h:725:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::function<_Res(_ArgTypes ...)>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/unordered_map:47,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unordered_map.h:2134:5: note: candidate: ‘template<class _Key1, class _Tp1, class _Hash1, class _Pred1, class _Alloc1> bool std::operator==(const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&, const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&)’
 2134 |     operator==(const unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unordered_map.h:2134:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/unordered_map:47,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unordered_map.h:2148:5: note: candidate: ‘template<class _Key1, class _Tp1, class _Hash1, class _Pred1, class _Alloc1> bool std::operator==(const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&, const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&)’
 2148 |     operator==(const unordered_multimap<_Key, _Tp, _Hash, _Pred, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unordered_map.h:2148:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/deque:67,
                 from /usr/include/c++/11/stack:60,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/lisp_iterators.h:7,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:10:
/usr/include/c++/11/bits/stl_deque.h:2246:5: note: candidate: ‘template<class _Tp, class _Alloc> bool std::operator==(const std::deque<_Tp, _Alloc>&, const std::deque<_Tp, _Alloc>&)’
 2246 |     operator==(const deque<_Tp, _Alloc>& __x, const deque<_Tp, _Alloc>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_deque.h:2246:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::deque<_Tp, _Alloc>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/stack:61,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/lisp_iterators.h:7,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:10:
/usr/include/c++/11/bits/stl_stack.h:319:5: note: candidate: ‘template<class _Tp, class _Seq> bool std::operator==(const std::stack<_Tp, _Seq>&, const std::stack<_Tp, _Seq>&)’
  319 |     operator==(const stack<_Tp, _Seq>& __x, const stack<_Tp, _Seq>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_stack.h:319:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const ActionStmt’ is not derived from ‘const std::stack<_Tp, _Seq>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/ios_base.h:46,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/system_error:362:3: note: candidate: ‘bool std::operator==(const std::error_code&, const std::error_code&)’
  362 |   operator==(const error_code& __lhs, const error_code& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:362:32: note:   no known conversion for argument 1 from ‘const ActionStmt’ to ‘const std::error_code&’
  362 |   operator==(const error_code& __lhs, const error_code& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:368:3: note: candidate: ‘bool std::operator==(const std::error_code&, const std::error_condition&)’
  368 |   operator==(const error_code& __lhs, const error_condition& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:368:32: note:   no known conversion for argument 1 from ‘const ActionStmt’ to ‘const std::error_code&’
  368 |   operator==(const error_code& __lhs, const error_condition& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:376:3: note: candidate: ‘bool std::operator==(const std::error_condition&, const std::error_condition&)’
  376 |   operator==(const error_condition& __lhs,
      |   ^~~~~~~~
/usr/include/c++/11/system_error:376:37: note:   no known conversion for argument 1 from ‘const ActionStmt’ to ‘const std::error_condition&’
  376 |   operator==(const error_condition& __lhs,
      |              ~~~~~~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:408:3: note: candidate: ‘bool std::operator==(const std::error_condition&, const std::error_code&)’
  408 |   operator==(const error_condition& __lhs, const error_code& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:408:37: note:   no known conversion for argument 1 from ‘const ActionStmt’ to ‘const std::error_condition&’
  408 |   operator==(const error_condition& __lhs, const error_code& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~~~~~~^~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2380,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/variant:1256:18: note: candidate: ‘constexpr bool std::operator==(std::monostate, std::monostate)’
 1256 |   constexpr bool operator==(monostate, monostate) noexcept { return true; }
      |                  ^~~~~~~~
/usr/include/c++/11/variant:1256:29: note:   no known conversion for argument 1 from ‘const ActionStmt’ to ‘std::monostate’
 1256 |   constexpr bool operator==(monostate, monostate) noexcept { return true; }
      |                             ^~~~~~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h: In instantiation of ‘constexpr bool std::equal_to<_Tp>::operator()(const _Tp&, const _Tp&) const [with _Tp = InitStmt]’:
/usr/include/c++/11/bits/hashtable_policy.h:1617:39:   required from ‘bool std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::_M_equals(const _Key&, std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::__hash_code, const std::__detail::_Hash_node_value<_Value, typename _Traits::__hash_cached::value>&) const [with _Key = InitStmt; _Value = std::pair<const InitStmt, std::vector<Predicate> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<InitStmt>; _Hash = std::hash<InitStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::__hash_code = long unsigned int; typename _Traits::__hash_cached = std::__detail::_Hashtable_traits<true, false, true>::__hash_cached]’
/usr/include/c++/11/bits/hashtable.h:1840:23:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_base_ptr std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_M_find_before_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type, const key_type&, std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code) const [with _Key = InitStmt; _Value = std::pair<const InitStmt, std::vector<Predicate> >; _Alloc = std::allocator<std::pair<const InitStmt, std::vector<Predicate> > >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<InitStmt>; _Hash = std::hash<InitStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_base_ptr = std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<const InitStmt, std::vector<Predicate> >, true> > >::__node_base*; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type = long unsigned int; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::key_type = InitStmt; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code = long unsigned int]’
/usr/include/c++/11/bits/hashtable.h:810:31:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_ptr std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_M_find_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type, const key_type&, std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code) const [with _Key = InitStmt; _Value = std::pair<const InitStmt, std::vector<Predicate> >; _Alloc = std::allocator<std::pair<const InitStmt, std::vector<Predicate> > >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<InitStmt>; _Hash = std::hash<InitStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_ptr = std::allocator<std::__detail::_Hash_node<std::pair<const InitStmt, std::vector<Predicate> >, true> >::value_type*; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type = long unsigned int; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::key_type = InitStmt; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code = long unsigned int]’
/usr/include/c++/11/bits/hashtable_policy.h:704:42:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = InitStmt; _Pair = std::pair<const InitStmt, std::vector<Predicate> >; _Alloc = std::allocator<std::pair<const InitStmt, std::vector<Predicate> > >; _Equal = std::equal_to<InitStmt>; _Hash = std::hash<InitStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = std::vector<Predicate>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = InitStmt]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = InitStmt; _Tp = std::vector<Predicate>; _Hash = std::hash<InitStmt>; _Pred = std::equal_to<InitStmt>; _Alloc = std::allocator<std::pair<const InitStmt, std::vector<Predicate> > >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = std::vector<Predicate>; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = InitStmt]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:375:64:   required from here
/usr/include/c++/11/bits/stl_function.h:370:20: error: no match for ‘operator==’ (operand types are ‘const InitStmt’ and ‘const InitStmt’)
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:466:5: note: candidate: ‘template<class _T1, class _T2> constexpr bool std::operator==(const std::pair<_T1, _T2>&, const std::pair<_T1, _T2>&)’
  466 |     operator==(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_pair.h:466:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::pair<_T1, _T2>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:419:5: note: candidate: ‘template<class _Iterator> constexpr bool std::operator==(const std::reverse_iterator<_Iterator>&, const std::reverse_iterator<_Iterator>&)’
  419 |     operator==(const reverse_iterator<_Iterator>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:419:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::reverse_iterator<_Iterator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:458:5: note: candidate: ‘template<class _IteratorL, class _IteratorR> constexpr bool std::operator==(const std::reverse_iterator<_Iterator>&, const std::reverse_iterator<_IteratorR>&)’
  458 |     operator==(const reverse_iterator<_IteratorL>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:458:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::reverse_iterator<_Iterator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:1533:5: note: candidate: ‘template<class _IteratorL, class _IteratorR> constexpr bool std::operator==(const std::move_iterator<_IteratorL>&, const std::move_iterator<_IteratorR>&)’
 1533 |     operator==(const move_iterator<_IteratorL>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:1533:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::move_iterator<_IteratorL>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:1601:5: note: candidate: ‘template<class _Iterator> constexpr bool std::operator==(const std::move_iterator<_IteratorL>&, const std::move_iterator<_IteratorL>&)’
 1601 |     operator==(const move_iterator<_Iterator>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:1601:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::move_iterator<_IteratorL>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/allocator.h:218:5: note: candidate: ‘template<class _T1, class _T2> bool std::operator==(const std::allocator<_Tp1>&, const std::allocator<_T2>&)’
  218 |     operator==(const allocator<_T1>&, const allocator<_T2>&)
      |     ^~~~~~~~
/usr/include/c++/11/bits/allocator.h:218:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::allocator<_Tp1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/tuple:39,
                 from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/array:276:5: note: candidate: ‘template<class _Tp, long unsigned int _Nm> bool std::operator==(const std::array<_Tp, _Nm>&, const std::array<_Tp, _Nm>&)’
  276 |     operator==(const array<_Tp, _Nm>& __one, const array<_Tp, _Nm>& __two)
      |     ^~~~~~~~
/usr/include/c++/11/array:276:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::array<_Tp, _Nm>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/tuple:1528:5: note: candidate: ‘template<class ... _TElements, class ... _UElements> constexpr bool std::operator==(const std::tuple<_Tps ...>&, const std::tuple<_UTypes ...>&)’
 1528 |     operator==(const tuple<_TElements...>& __t,
      |     ^~~~~~~~
/usr/include/c++/11/tuple:1528:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::tuple<_Tps ...>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:753:5: note: candidate: ‘template<class _Tp, class _Dp, class _Up, class _Ep> bool std::operator==(const std::unique_ptr<_Tp, _Dp>&, const std::unique_ptr<_Up, _Ep>&)’
  753 |     operator==(const unique_ptr<_Tp, _Dp>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:753:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:760:5: note: candidate: ‘template<class _Tp, class _Dp> bool std::operator==(const std::unique_ptr<_Tp, _Dp>&, std::nullptr_t)’
  760 |     operator==(const unique_ptr<_Tp, _Dp>& __x, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:760:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:767:5: note: candidate: ‘template<class _Tp, class _Dp> bool std::operator==(std::nullptr_t, const std::unique_ptr<_Tp, _Dp>&)’
  767 |     operator==(nullptr_t, const unique_ptr<_Tp, _Dp>& __x) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:767:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/iosfwd:40,
                 from /usr/include/c++/11/bits/shared_ptr.h:52,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/postypes.h:222:5: note: candidate: ‘template<class _StateT> bool std::operator==(const std::fpos<_StateT>&, const std::fpos<_StateT>&)’
  222 |     operator==(const fpos<_StateT>& __lhs, const fpos<_StateT>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/bits/postypes.h:222:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::fpos<_StateT>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1410:5: note: candidate: ‘template<class _Tp1, class _Tp2, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(const std::__shared_ptr<_Tp1, _Lp>&, const std::__shared_ptr<_Tp2, _Lp>&)’
 1410 |     operator==(const __shared_ptr<_Tp1, _Lp>& __a,
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1410:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::__shared_ptr<_Tp1, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1416:5: note: candidate: ‘template<class _Tp, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(const std::__shared_ptr<_Tp, _Lp>&, std::nullptr_t)’
 1416 |     operator==(const __shared_ptr<_Tp, _Lp>& __a, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1416:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::__shared_ptr<_Tp, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1436:5: note: candidate: ‘template<class _Tp, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(std::nullptr_t, const std::__shared_ptr<_Tp, _Lp>&)’
 1436 |     operator==(nullptr_t, const __shared_ptr<_Tp, _Lp>& __a) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1436:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::__shared_ptr<_Tp, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:437:5: note: candidate: ‘template<class _Tp, class _Up> bool std::operator==(const std::shared_ptr<_Tp>&, const std::shared_ptr<_Tp>&)’
  437 |     operator==(const shared_ptr<_Tp>& __a, const shared_ptr<_Up>& __b) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:437:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:443:5: note: candidate: ‘template<class _Tp> bool std::operator==(const std::shared_ptr<_Tp>&, std::nullptr_t)’
  443 |     operator==(const shared_ptr<_Tp>& __a, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:443:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:464:5: note: candidate: ‘template<class _Tp> bool std::operator==(std::nullptr_t, const std::shared_ptr<_Tp>&)’
  464 |     operator==(nullptr_t, const shared_ptr<_Tp>& __a) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:464:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:535:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::basic_string_view<_CharT, _Traits>, std::basic_string_view<_CharT, _Traits>)’
  535 |     operator==(basic_string_view<_CharT, _Traits> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:535:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘InitStmt’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:541:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::basic_string_view<_CharT, _Traits>, std::__type_identity_t<std::basic_string_view<_CharT, _Traits> >)’
  541 |     operator==(basic_string_view<_CharT, _Traits> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:541:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘InitStmt’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:564:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::__type_identity_t<std::basic_string_view<_CharT, _Traits> >, std::basic_string_view<_CharT, _Traits>)’
  564 |     operator==(__type_identity_t<basic_string_view<_CharT, _Traits>> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:564:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘InitStmt’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6226:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&, const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&)’
 6226 |     operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6226:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6234:5: note: candidate: ‘template<class _CharT> typename __gnu_cxx::__enable_if<std::__is_char<_Tp>::__value, bool>::__type std::operator==(const std::__cxx11::basic_string<_CharT>&, const std::__cxx11::basic_string<_CharT>&)’
 6234 |     operator==(const basic_string<_CharT>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6234:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::__cxx11::basic_string<_CharT>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6248:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&, const _CharT*)’
 6248 |     operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6248:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6289:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const _CharT*, const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&)’
 6289 |     operator==(const _CharT* __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6289:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   mismatched types ‘const _CharT*’ and ‘InitStmt’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/locale_facets.h:48,
                 from /usr/include/c++/11/bits/basic_ios.h:37,
                 from /usr/include/c++/11/ios:44,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/streambuf_iterator.h:226:5: note: candidate: ‘template<class _CharT, class _Traits> bool std::operator==(const std::istreambuf_iterator<_CharT, _Traits>&, const std::istreambuf_iterator<_CharT, _Traits>&)’
  226 |     operator==(const istreambuf_iterator<_CharT, _Traits>& __a,
      |     ^~~~~~~~
/usr/include/c++/11/bits/streambuf_iterator.h:226:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::istreambuf_iterator<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/vector:67,
                 from /usr/include/gtest/gtest.h:60,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_vector.h:1892:5: note: candidate: ‘template<class _Tp, class _Alloc> bool std::operator==(const std::vector<_Tp, _Alloc>&, const std::vector<_Tp, _Alloc>&)’
 1892 |     operator==(const vector<_Tp, _Alloc>& __x, const vector<_Tp, _Alloc>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_vector.h:1892:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::vector<_Tp, _Alloc>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1045:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Tp, _Up> std::operator==(const std::optional<_Tp>&, const std::optional<_Up>&)’
 1045 |     operator==(const optional<_Tp>& __lhs, const optional<_Up>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1045:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1105:5: note: candidate: ‘template<class _Tp> constexpr bool std::operator==(const std::optional<_Tp>&, std::nullopt_t)’
 1105 |     operator==(const optional<_Tp>& __lhs, nullopt_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/optional:1105:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1116:5: note: candidate: ‘template<class _Tp> constexpr bool std::operator==(std::nullopt_t, const std::optional<_Tp>&)’
 1116 |     operator==(nullopt_t, const optional<_Tp>& __rhs) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/optional:1116:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1173:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Tp, _Up> std::operator==(const std::optional<_Tp>&, const _Up&)’
 1173 |     operator==(const optional<_Tp>& __lhs, const _Up& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1173:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1179:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Up, _Tp> std::operator==(const _Up&, const std::optional<_Tp>&)’
 1179 |     operator==(const _Up& __lhs, const optional<_Tp>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1179:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2380,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/variant:1249:3: note: candidate: ‘template<class ... _Types> constexpr bool std::operator==(const std::variant<_Types ...>&, const std::variant<_Types ...>&)’
 1249 |   _VARIANT_RELATION_FUNCTION_TEMPLATE(==, equal)
      |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/variant:1249:3: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::variant<_Types ...>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/map:61,
                 from /usr/include/gtest/internal/gtest-internal.h:59,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_map.h:1463:5: note: candidate: ‘template<class _Key, class _Tp, class _Compare, class _Alloc> bool std::operator==(const std::map<_Key, _Tp, _Compare, _Allocator>&, const std::map<_Key, _Tp, _Compare, _Allocator>&)’
 1463 |     operator==(const map<_Key, _Tp, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_map.h:1463:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::map<_Key, _Tp, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/map:62,
                 from /usr/include/gtest/internal/gtest-internal.h:59,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_multimap.h:1128:5: note: candidate: ‘template<class _Key, class _Tp, class _Compare, class _Alloc> bool std::operator==(const std::multimap<_Key, _Tp, _Compare, _Allocator>&, const std::multimap<_Key, _Tp, _Compare, _Allocator>&)’
 1128 |     operator==(const multimap<_Key, _Tp, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_multimap.h:1128:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::multimap<_Key, _Tp, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/set:61,
                 from /usr/include/gtest/internal/gtest-internal.h:60,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_set.h:985:5: note: candidate: ‘template<class _Key, class _Compare, class _Alloc> bool std::operator==(const std::set<_Key, _Compare, _Allocator>&, const std::set<_Key, _Compare, _Allocator>&)’
  985 |     operator==(const set<_Key, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_set.h:985:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::set<_Key, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/set:62,
                 from /usr/include/gtest/internal/gtest-internal.h:60,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_multiset.h:971:5: note: candidate: ‘template<class _Key, class _Compare, class _Alloc> bool std::operator==(const std::multiset<_Key, _Compare, _Allocator>&, const std::multiset<_Key, _Compare, _Allocator>&)’
  971 |     operator==(const multiset<_Key, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_multiset.h:971:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::multiset<_Key, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/functional:59,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/std_function.h:718:5: note: candidate: ‘template<class _Res, class ... _Args> bool std::operator==(const std::function<_Res(_ArgTypes ...)>&, std::nullptr_t)’
  718 |     operator==(const function<_Res(_Args...)>& __f, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/std_function.h:718:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::function<_Res(_ArgTypes ...)>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/functional:59,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/std_function.h:725:5: note: candidate: ‘template<class _Res, class ... _Args> bool std::operator==(std::nullptr_t, const std::function<_Res(_ArgTypes ...)>&)’
  725 |     operator==(nullptr_t, const function<_Res(_Args...)>& __f) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/std_function.h:725:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::function<_Res(_ArgTypes ...)>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/unordered_map:47,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unordered_map.h:2134:5: note: candidate: ‘template<class _Key1, class _Tp1, class _Hash1, class _Pred1, class _Alloc1> bool std::operator==(const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&, const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&)’
 2134 |     operator==(const unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unordered_map.h:2134:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/unordered_map:47,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unordered_map.h:2148:5: note: candidate: ‘template<class _Key1, class _Tp1, class _Hash1, class _Pred1, class _Alloc1> bool std::operator==(const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&, const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&)’
 2148 |     operator==(const unordered_multimap<_Key, _Tp, _Hash, _Pred, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unordered_map.h:2148:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/deque:67,
                 from /usr/include/c++/11/stack:60,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/lisp_iterators.h:7,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:10:
/usr/include/c++/11/bits/stl_deque.h:2246:5: note: candidate: ‘template<class _Tp, class _Alloc> bool std::operator==(const std::deque<_Tp, _Alloc>&, const std::deque<_Tp, _Alloc>&)’
 2246 |     operator==(const deque<_Tp, _Alloc>& __x, const deque<_Tp, _Alloc>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_deque.h:2246:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::deque<_Tp, _Alloc>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/stack:61,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/lisp_iterators.h:7,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:10:
/usr/include/c++/11/bits/stl_stack.h:319:5: note: candidate: ‘template<class _Tp, class _Seq> bool std::operator==(const std::stack<_Tp, _Seq>&, const std::stack<_Tp, _Seq>&)’
  319 |     operator==(const stack<_Tp, _Seq>& __x, const stack<_Tp, _Seq>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_stack.h:319:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const InitStmt’ is not derived from ‘const std::stack<_Tp, _Seq>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/ios_base.h:46,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/system_error:362:3: note: candidate: ‘bool std::operator==(const std::error_code&, const std::error_code&)’
  362 |   operator==(const error_code& __lhs, const error_code& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:362:32: note:   no known conversion for argument 1 from ‘const InitStmt’ to ‘const std::error_code&’
  362 |   operator==(const error_code& __lhs, const error_code& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:368:3: note: candidate: ‘bool std::operator==(const std::error_code&, const std::error_condition&)’
  368 |   operator==(const error_code& __lhs, const error_condition& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:368:32: note:   no known conversion for argument 1 from ‘const InitStmt’ to ‘const std::error_code&’
  368 |   operator==(const error_code& __lhs, const error_condition& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:376:3: note: candidate: ‘bool std::operator==(const std::error_condition&, const std::error_condition&)’
  376 |   operator==(const error_condition& __lhs,
      |   ^~~~~~~~
/usr/include/c++/11/system_error:376:37: note:   no known conversion for argument 1 from ‘const InitStmt’ to ‘const std::error_condition&’
  376 |   operator==(const error_condition& __lhs,
      |              ~~~~~~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:408:3: note: candidate: ‘bool std::operator==(const std::error_condition&, const std::error_code&)’
  408 |   operator==(const error_condition& __lhs, const error_code& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:408:37: note:   no known conversion for argument 1 from ‘const InitStmt’ to ‘const std::error_condition&’
  408 |   operator==(const error_condition& __lhs, const error_code& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~~~~~~^~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2380,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/variant:1256:18: note: candidate: ‘constexpr bool std::operator==(std::monostate, std::monostate)’
 1256 |   constexpr bool operator==(monostate, monostate) noexcept { return true; }
      |                  ^~~~~~~~
/usr/include/c++/11/variant:1256:29: note:   no known conversion for argument 1 from ‘const InitStmt’ to ‘std::monostate’
 1256 |   constexpr bool operator==(monostate, monostate) noexcept { return true; }
      |                             ^~~~~~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h: In instantiation of ‘constexpr bool std::equal_to<_Tp>::operator()(const _Tp&, const _Tp&) const [with _Tp = GoalStmt]’:
/usr/include/c++/11/bits/hashtable_policy.h:1617:39:   required from ‘bool std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::_M_equals(const _Key&, std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::__hash_code, const std::__detail::_Hash_node_value<_Value, typename _Traits::__hash_cached::value>&) const [with _Key = GoalStmt; _Value = std::pair<const GoalStmt, std::vector<Predicate> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<GoalStmt>; _Hash = std::hash<GoalStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::__hash_code = long unsigned int; typename _Traits::__hash_cached = std::__detail::_Hashtable_traits<true, false, true>::__hash_cached]’
/usr/include/c++/11/bits/hashtable.h:1840:23:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_base_ptr std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_M_find_before_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type, const key_type&, std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code) const [with _Key = GoalStmt; _Value = std::pair<const GoalStmt, std::vector<Predicate> >; _Alloc = std::allocator<std::pair<const GoalStmt, std::vector<Predicate> > >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<GoalStmt>; _Hash = std::hash<GoalStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_base_ptr = std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<const GoalStmt, std::vector<Predicate> >, true> > >::__node_base*; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type = long unsigned int; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::key_type = GoalStmt; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code = long unsigned int]’
/usr/include/c++/11/bits/hashtable.h:810:31:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_ptr std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_M_find_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type, const key_type&, std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code) const [with _Key = GoalStmt; _Value = std::pair<const GoalStmt, std::vector<Predicate> >; _Alloc = std::allocator<std::pair<const GoalStmt, std::vector<Predicate> > >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<GoalStmt>; _Hash = std::hash<GoalStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_ptr = std::allocator<std::__detail::_Hash_node<std::pair<const GoalStmt, std::vector<Predicate> >, true> >::value_type*; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type = long unsigned int; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::key_type = GoalStmt; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code = long unsigned int]’
/usr/include/c++/11/bits/hashtable_policy.h:704:42:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = GoalStmt; _Pair = std::pair<const GoalStmt, std::vector<Predicate> >; _Alloc = std::allocator<std::pair<const GoalStmt, std::vector<Predicate> > >; _Equal = std::equal_to<GoalStmt>; _Hash = std::hash<GoalStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = std::vector<Predicate>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = GoalStmt]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = GoalStmt; _Tp = std::vector<Predicate>; _Hash = std::hash<GoalStmt>; _Pred = std::equal_to<GoalStmt>; _Alloc = std::allocator<std::pair<const GoalStmt, std::vector<Predicate> > >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = std::vector<Predicate>; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = GoalStmt]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:379:64:   required from here
/usr/include/c++/11/bits/stl_function.h:370:20: error: no match for ‘operator==’ (operand types are ‘const GoalStmt’ and ‘const GoalStmt’)
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:466:5: note: candidate: ‘template<class _T1, class _T2> constexpr bool std::operator==(const std::pair<_T1, _T2>&, const std::pair<_T1, _T2>&)’
  466 |     operator==(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_pair.h:466:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::pair<_T1, _T2>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:419:5: note: candidate: ‘template<class _Iterator> constexpr bool std::operator==(const std::reverse_iterator<_Iterator>&, const std::reverse_iterator<_Iterator>&)’
  419 |     operator==(const reverse_iterator<_Iterator>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:419:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::reverse_iterator<_Iterator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:458:5: note: candidate: ‘template<class _IteratorL, class _IteratorR> constexpr bool std::operator==(const std::reverse_iterator<_Iterator>&, const std::reverse_iterator<_IteratorR>&)’
  458 |     operator==(const reverse_iterator<_IteratorL>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:458:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::reverse_iterator<_Iterator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:1533:5: note: candidate: ‘template<class _IteratorL, class _IteratorR> constexpr bool std::operator==(const std::move_iterator<_IteratorL>&, const std::move_iterator<_IteratorR>&)’
 1533 |     operator==(const move_iterator<_IteratorL>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:1533:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::move_iterator<_IteratorL>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:1601:5: note: candidate: ‘template<class _Iterator> constexpr bool std::operator==(const std::move_iterator<_IteratorL>&, const std::move_iterator<_IteratorL>&)’
 1601 |     operator==(const move_iterator<_Iterator>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:1601:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::move_iterator<_IteratorL>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/allocator.h:218:5: note: candidate: ‘template<class _T1, class _T2> bool std::operator==(const std::allocator<_Tp1>&, const std::allocator<_T2>&)’
  218 |     operator==(const allocator<_T1>&, const allocator<_T2>&)
      |     ^~~~~~~~
/usr/include/c++/11/bits/allocator.h:218:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::allocator<_Tp1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/tuple:39,
                 from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/array:276:5: note: candidate: ‘template<class _Tp, long unsigned int _Nm> bool std::operator==(const std::array<_Tp, _Nm>&, const std::array<_Tp, _Nm>&)’
  276 |     operator==(const array<_Tp, _Nm>& __one, const array<_Tp, _Nm>& __two)
      |     ^~~~~~~~
/usr/include/c++/11/array:276:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::array<_Tp, _Nm>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/tuple:1528:5: note: candidate: ‘template<class ... _TElements, class ... _UElements> constexpr bool std::operator==(const std::tuple<_Tps ...>&, const std::tuple<_UTypes ...>&)’
 1528 |     operator==(const tuple<_TElements...>& __t,
      |     ^~~~~~~~
/usr/include/c++/11/tuple:1528:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::tuple<_Tps ...>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:753:5: note: candidate: ‘template<class _Tp, class _Dp, class _Up, class _Ep> bool std::operator==(const std::unique_ptr<_Tp, _Dp>&, const std::unique_ptr<_Up, _Ep>&)’
  753 |     operator==(const unique_ptr<_Tp, _Dp>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:753:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:760:5: note: candidate: ‘template<class _Tp, class _Dp> bool std::operator==(const std::unique_ptr<_Tp, _Dp>&, std::nullptr_t)’
  760 |     operator==(const unique_ptr<_Tp, _Dp>& __x, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:760:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:767:5: note: candidate: ‘template<class _Tp, class _Dp> bool std::operator==(std::nullptr_t, const std::unique_ptr<_Tp, _Dp>&)’
  767 |     operator==(nullptr_t, const unique_ptr<_Tp, _Dp>& __x) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:767:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/iosfwd:40,
                 from /usr/include/c++/11/bits/shared_ptr.h:52,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/postypes.h:222:5: note: candidate: ‘template<class _StateT> bool std::operator==(const std::fpos<_StateT>&, const std::fpos<_StateT>&)’
  222 |     operator==(const fpos<_StateT>& __lhs, const fpos<_StateT>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/bits/postypes.h:222:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::fpos<_StateT>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1410:5: note: candidate: ‘template<class _Tp1, class _Tp2, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(const std::__shared_ptr<_Tp1, _Lp>&, const std::__shared_ptr<_Tp2, _Lp>&)’
 1410 |     operator==(const __shared_ptr<_Tp1, _Lp>& __a,
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1410:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::__shared_ptr<_Tp1, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1416:5: note: candidate: ‘template<class _Tp, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(const std::__shared_ptr<_Tp, _Lp>&, std::nullptr_t)’
 1416 |     operator==(const __shared_ptr<_Tp, _Lp>& __a, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1416:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::__shared_ptr<_Tp, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1436:5: note: candidate: ‘template<class _Tp, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(std::nullptr_t, const std::__shared_ptr<_Tp, _Lp>&)’
 1436 |     operator==(nullptr_t, const __shared_ptr<_Tp, _Lp>& __a) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1436:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::__shared_ptr<_Tp, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:437:5: note: candidate: ‘template<class _Tp, class _Up> bool std::operator==(const std::shared_ptr<_Tp>&, const std::shared_ptr<_Tp>&)’
  437 |     operator==(const shared_ptr<_Tp>& __a, const shared_ptr<_Up>& __b) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:437:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:443:5: note: candidate: ‘template<class _Tp> bool std::operator==(const std::shared_ptr<_Tp>&, std::nullptr_t)’
  443 |     operator==(const shared_ptr<_Tp>& __a, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:443:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:464:5: note: candidate: ‘template<class _Tp> bool std::operator==(std::nullptr_t, const std::shared_ptr<_Tp>&)’
  464 |     operator==(nullptr_t, const shared_ptr<_Tp>& __a) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:464:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:535:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::basic_string_view<_CharT, _Traits>, std::basic_string_view<_CharT, _Traits>)’
  535 |     operator==(basic_string_view<_CharT, _Traits> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:535:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘GoalStmt’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:541:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::basic_string_view<_CharT, _Traits>, std::__type_identity_t<std::basic_string_view<_CharT, _Traits> >)’
  541 |     operator==(basic_string_view<_CharT, _Traits> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:541:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘GoalStmt’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:564:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::__type_identity_t<std::basic_string_view<_CharT, _Traits> >, std::basic_string_view<_CharT, _Traits>)’
  564 |     operator==(__type_identity_t<basic_string_view<_CharT, _Traits>> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:564:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘GoalStmt’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6226:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&, const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&)’
 6226 |     operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6226:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6234:5: note: candidate: ‘template<class _CharT> typename __gnu_cxx::__enable_if<std::__is_char<_Tp>::__value, bool>::__type std::operator==(const std::__cxx11::basic_string<_CharT>&, const std::__cxx11::basic_string<_CharT>&)’
 6234 |     operator==(const basic_string<_CharT>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6234:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::__cxx11::basic_string<_CharT>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6248:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&, const _CharT*)’
 6248 |     operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6248:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6289:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const _CharT*, const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&)’
 6289 |     operator==(const _CharT* __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6289:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   mismatched types ‘const _CharT*’ and ‘GoalStmt’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/locale_facets.h:48,
                 from /usr/include/c++/11/bits/basic_ios.h:37,
                 from /usr/include/c++/11/ios:44,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/streambuf_iterator.h:226:5: note: candidate: ‘template<class _CharT, class _Traits> bool std::operator==(const std::istreambuf_iterator<_CharT, _Traits>&, const std::istreambuf_iterator<_CharT, _Traits>&)’
  226 |     operator==(const istreambuf_iterator<_CharT, _Traits>& __a,
      |     ^~~~~~~~
/usr/include/c++/11/bits/streambuf_iterator.h:226:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::istreambuf_iterator<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/vector:67,
                 from /usr/include/gtest/gtest.h:60,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_vector.h:1892:5: note: candidate: ‘template<class _Tp, class _Alloc> bool std::operator==(const std::vector<_Tp, _Alloc>&, const std::vector<_Tp, _Alloc>&)’
 1892 |     operator==(const vector<_Tp, _Alloc>& __x, const vector<_Tp, _Alloc>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_vector.h:1892:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::vector<_Tp, _Alloc>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1045:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Tp, _Up> std::operator==(const std::optional<_Tp>&, const std::optional<_Up>&)’
 1045 |     operator==(const optional<_Tp>& __lhs, const optional<_Up>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1045:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1105:5: note: candidate: ‘template<class _Tp> constexpr bool std::operator==(const std::optional<_Tp>&, std::nullopt_t)’
 1105 |     operator==(const optional<_Tp>& __lhs, nullopt_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/optional:1105:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1116:5: note: candidate: ‘template<class _Tp> constexpr bool std::operator==(std::nullopt_t, const std::optional<_Tp>&)’
 1116 |     operator==(nullopt_t, const optional<_Tp>& __rhs) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/optional:1116:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1173:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Tp, _Up> std::operator==(const std::optional<_Tp>&, const _Up&)’
 1173 |     operator==(const optional<_Tp>& __lhs, const _Up& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1173:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1179:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Up, _Tp> std::operator==(const _Up&, const std::optional<_Tp>&)’
 1179 |     operator==(const _Up& __lhs, const optional<_Tp>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1179:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2380,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/variant:1249:3: note: candidate: ‘template<class ... _Types> constexpr bool std::operator==(const std::variant<_Types ...>&, const std::variant<_Types ...>&)’
 1249 |   _VARIANT_RELATION_FUNCTION_TEMPLATE(==, equal)
      |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/variant:1249:3: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::variant<_Types ...>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/map:61,
                 from /usr/include/gtest/internal/gtest-internal.h:59,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_map.h:1463:5: note: candidate: ‘template<class _Key, class _Tp, class _Compare, class _Alloc> bool std::operator==(const std::map<_Key, _Tp, _Compare, _Allocator>&, const std::map<_Key, _Tp, _Compare, _Allocator>&)’
 1463 |     operator==(const map<_Key, _Tp, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_map.h:1463:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::map<_Key, _Tp, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/map:62,
                 from /usr/include/gtest/internal/gtest-internal.h:59,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_multimap.h:1128:5: note: candidate: ‘template<class _Key, class _Tp, class _Compare, class _Alloc> bool std::operator==(const std::multimap<_Key, _Tp, _Compare, _Allocator>&, const std::multimap<_Key, _Tp, _Compare, _Allocator>&)’
 1128 |     operator==(const multimap<_Key, _Tp, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_multimap.h:1128:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::multimap<_Key, _Tp, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/set:61,
                 from /usr/include/gtest/internal/gtest-internal.h:60,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_set.h:985:5: note: candidate: ‘template<class _Key, class _Compare, class _Alloc> bool std::operator==(const std::set<_Key, _Compare, _Allocator>&, const std::set<_Key, _Compare, _Allocator>&)’
  985 |     operator==(const set<_Key, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_set.h:985:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::set<_Key, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/set:62,
                 from /usr/include/gtest/internal/gtest-internal.h:60,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_multiset.h:971:5: note: candidate: ‘template<class _Key, class _Compare, class _Alloc> bool std::operator==(const std::multiset<_Key, _Compare, _Allocator>&, const std::multiset<_Key, _Compare, _Allocator>&)’
  971 |     operator==(const multiset<_Key, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_multiset.h:971:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::multiset<_Key, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/functional:59,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/std_function.h:718:5: note: candidate: ‘template<class _Res, class ... _Args> bool std::operator==(const std::function<_Res(_ArgTypes ...)>&, std::nullptr_t)’
  718 |     operator==(const function<_Res(_Args...)>& __f, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/std_function.h:718:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::function<_Res(_ArgTypes ...)>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/functional:59,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/std_function.h:725:5: note: candidate: ‘template<class _Res, class ... _Args> bool std::operator==(std::nullptr_t, const std::function<_Res(_ArgTypes ...)>&)’
  725 |     operator==(nullptr_t, const function<_Res(_Args...)>& __f) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/std_function.h:725:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::function<_Res(_ArgTypes ...)>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/unordered_map:47,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unordered_map.h:2134:5: note: candidate: ‘template<class _Key1, class _Tp1, class _Hash1, class _Pred1, class _Alloc1> bool std::operator==(const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&, const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&)’
 2134 |     operator==(const unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unordered_map.h:2134:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/unordered_map:47,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unordered_map.h:2148:5: note: candidate: ‘template<class _Key1, class _Tp1, class _Hash1, class _Pred1, class _Alloc1> bool std::operator==(const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&, const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&)’
 2148 |     operator==(const unordered_multimap<_Key, _Tp, _Hash, _Pred, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unordered_map.h:2148:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/deque:67,
                 from /usr/include/c++/11/stack:60,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/lisp_iterators.h:7,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:10:
/usr/include/c++/11/bits/stl_deque.h:2246:5: note: candidate: ‘template<class _Tp, class _Alloc> bool std::operator==(const std::deque<_Tp, _Alloc>&, const std::deque<_Tp, _Alloc>&)’
 2246 |     operator==(const deque<_Tp, _Alloc>& __x, const deque<_Tp, _Alloc>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_deque.h:2246:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::deque<_Tp, _Alloc>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/stack:61,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/lisp_iterators.h:7,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:10:
/usr/include/c++/11/bits/stl_stack.h:319:5: note: candidate: ‘template<class _Tp, class _Seq> bool std::operator==(const std::stack<_Tp, _Seq>&, const std::stack<_Tp, _Seq>&)’
  319 |     operator==(const stack<_Tp, _Seq>& __x, const stack<_Tp, _Seq>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_stack.h:319:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const GoalStmt’ is not derived from ‘const std::stack<_Tp, _Seq>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/ios_base.h:46,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/system_error:362:3: note: candidate: ‘bool std::operator==(const std::error_code&, const std::error_code&)’
  362 |   operator==(const error_code& __lhs, const error_code& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:362:32: note:   no known conversion for argument 1 from ‘const GoalStmt’ to ‘const std::error_code&’
  362 |   operator==(const error_code& __lhs, const error_code& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:368:3: note: candidate: ‘bool std::operator==(const std::error_code&, const std::error_condition&)’
  368 |   operator==(const error_code& __lhs, const error_condition& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:368:32: note:   no known conversion for argument 1 from ‘const GoalStmt’ to ‘const std::error_code&’
  368 |   operator==(const error_code& __lhs, const error_condition& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:376:3: note: candidate: ‘bool std::operator==(const std::error_condition&, const std::error_condition&)’
  376 |   operator==(const error_condition& __lhs,
      |   ^~~~~~~~
/usr/include/c++/11/system_error:376:37: note:   no known conversion for argument 1 from ‘const GoalStmt’ to ‘const std::error_condition&’
  376 |   operator==(const error_condition& __lhs,
      |              ~~~~~~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:408:3: note: candidate: ‘bool std::operator==(const std::error_condition&, const std::error_code&)’
  408 |   operator==(const error_condition& __lhs, const error_code& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:408:37: note:   no known conversion for argument 1 from ‘const GoalStmt’ to ‘const std::error_condition&’
  408 |   operator==(const error_condition& __lhs, const error_code& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~~~~~~^~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2380,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/variant:1256:18: note: candidate: ‘constexpr bool std::operator==(std::monostate, std::monostate)’
 1256 |   constexpr bool operator==(monostate, monostate) noexcept { return true; }
      |                  ^~~~~~~~
/usr/include/c++/11/variant:1256:29: note:   no known conversion for argument 1 from ‘const GoalStmt’ to ‘std::monostate’
 1256 |   constexpr bool operator==(monostate, monostate) noexcept { return true; }
      |                             ^~~~~~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h: In instantiation of ‘constexpr bool std::equal_to<_Tp>::operator()(const _Tp&, const _Tp&) const [with _Tp = PredicateInstance]’:
/usr/include/c++/11/bits/hashtable_policy.h:1617:39:   required from ‘bool std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::_M_equals(const _Key&, std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::__hash_code, const std::__detail::_Hash_node_value<_Value, typename _Traits::__hash_cached::value>&) const [with _Key = PredicateInstance; _Value = std::pair<const PredicateInstance, Predicate>; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<PredicateInstance>; _Hash = std::hash<PredicateInstance>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Hashtable_base<_Key, _Value, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _Traits>::__hash_code = long unsigned int; typename _Traits::__hash_cached = std::__detail::_Hashtable_traits<true, false, true>::__hash_cached]’
/usr/include/c++/11/bits/hashtable.h:1840:23:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_base_ptr std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_M_find_before_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type, const key_type&, std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code) const [with _Key = PredicateInstance; _Value = std::pair<const PredicateInstance, Predicate>; _Alloc = std::allocator<std::pair<const PredicateInstance, Predicate> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<PredicateInstance>; _Hash = std::hash<PredicateInstance>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_base_ptr = std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<const PredicateInstance, Predicate>, true> > >::__node_base*; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type = long unsigned int; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::key_type = PredicateInstance; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code = long unsigned int]’
/usr/include/c++/11/bits/hashtable.h:810:31:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_ptr std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_M_find_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type, const key_type&, std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code) const [with _Key = PredicateInstance; _Value = std::pair<const PredicateInstance, Predicate>; _Alloc = std::allocator<std::pair<const PredicateInstance, Predicate> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<PredicateInstance>; _Hash = std::hash<PredicateInstance>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__node_ptr = std::allocator<std::__detail::_Hash_node<std::pair<const PredicateInstance, Predicate>, true> >::value_type*; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::size_type = long unsigned int; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::key_type = PredicateInstance; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hash_code = long unsigned int]’
/usr/include/c++/11/bits/hashtable_policy.h:704:42:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = PredicateInstance; _Pair = std::pair<const PredicateInstance, Predicate>; _Alloc = std::allocator<std::pair<const PredicateInstance, Predicate> >; _Equal = std::equal_to<PredicateInstance>; _Hash = std::hash<PredicateInstance>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = Predicate; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = PredicateInstance]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = PredicateInstance; _Tp = Predicate; _Hash = std::hash<PredicateInstance>; _Pred = std::equal_to<PredicateInstance>; _Alloc = std::allocator<std::pair<const PredicateInstance, Predicate> >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = Predicate; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = PredicateInstance]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:413:46:   required from here
/usr/include/c++/11/bits/stl_function.h:370:20: error: no match for ‘operator==’ (operand types are ‘const PredicateInstance’ and ‘const PredicateInstance’)
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:64,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_pair.h:466:5: note: candidate: ‘template<class _T1, class _T2> constexpr bool std::operator==(const std::pair<_T1, _T2>&, const std::pair<_T1, _T2>&)’
  466 |     operator==(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_pair.h:466:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::pair<_T1, _T2>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:419:5: note: candidate: ‘template<class _Iterator> constexpr bool std::operator==(const std::reverse_iterator<_Iterator>&, const std::reverse_iterator<_Iterator>&)’
  419 |     operator==(const reverse_iterator<_Iterator>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:419:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::reverse_iterator<_Iterator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:458:5: note: candidate: ‘template<class _IteratorL, class _IteratorR> constexpr bool std::operator==(const std::reverse_iterator<_Iterator>&, const std::reverse_iterator<_IteratorR>&)’
  458 |     operator==(const reverse_iterator<_IteratorL>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:458:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::reverse_iterator<_Iterator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:1533:5: note: candidate: ‘template<class _IteratorL, class _IteratorR> constexpr bool std::operator==(const std::move_iterator<_IteratorL>&, const std::move_iterator<_IteratorR>&)’
 1533 |     operator==(const move_iterator<_IteratorL>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:1533:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::move_iterator<_IteratorL>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/stl_algobase.h:67,
                 from /usr/include/c++/11/memory:63,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_iterator.h:1601:5: note: candidate: ‘template<class _Iterator> constexpr bool std::operator==(const std::move_iterator<_IteratorL>&, const std::move_iterator<_IteratorL>&)’
 1601 |     operator==(const move_iterator<_Iterator>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_iterator.h:1601:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::move_iterator<_IteratorL>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:64,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/allocator.h:218:5: note: candidate: ‘template<class _T1, class _T2> bool std::operator==(const std::allocator<_Tp1>&, const std::allocator<_T2>&)’
  218 |     operator==(const allocator<_T1>&, const allocator<_T2>&)
      |     ^~~~~~~~
/usr/include/c++/11/bits/allocator.h:218:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::allocator<_Tp1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/tuple:39,
                 from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/array:276:5: note: candidate: ‘template<class _Tp, long unsigned int _Nm> bool std::operator==(const std::array<_Tp, _Nm>&, const std::array<_Tp, _Nm>&)’
  276 |     operator==(const array<_Tp, _Nm>& __one, const array<_Tp, _Nm>& __two)
      |     ^~~~~~~~
/usr/include/c++/11/array:276:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::array<_Tp, _Nm>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/tuple:1528:5: note: candidate: ‘template<class ... _TElements, class ... _UElements> constexpr bool std::operator==(const std::tuple<_Tps ...>&, const std::tuple<_UTypes ...>&)’
 1528 |     operator==(const tuple<_TElements...>& __t,
      |     ^~~~~~~~
/usr/include/c++/11/tuple:1528:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::tuple<_Tps ...>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:753:5: note: candidate: ‘template<class _Tp, class _Dp, class _Up, class _Ep> bool std::operator==(const std::unique_ptr<_Tp, _Dp>&, const std::unique_ptr<_Up, _Ep>&)’
  753 |     operator==(const unique_ptr<_Tp, _Dp>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:753:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:760:5: note: candidate: ‘template<class _Tp, class _Dp> bool std::operator==(const std::unique_ptr<_Tp, _Dp>&, std::nullptr_t)’
  760 |     operator==(const unique_ptr<_Tp, _Dp>& __x, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:760:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unique_ptr.h:767:5: note: candidate: ‘template<class _Tp, class _Dp> bool std::operator==(std::nullptr_t, const std::unique_ptr<_Tp, _Dp>&)’
  767 |     operator==(nullptr_t, const unique_ptr<_Tp, _Dp>& __x) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/unique_ptr.h:767:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::unique_ptr<_Tp, _Dp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/iosfwd:40,
                 from /usr/include/c++/11/bits/shared_ptr.h:52,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/postypes.h:222:5: note: candidate: ‘template<class _StateT> bool std::operator==(const std::fpos<_StateT>&, const std::fpos<_StateT>&)’
  222 |     operator==(const fpos<_StateT>& __lhs, const fpos<_StateT>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/bits/postypes.h:222:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::fpos<_StateT>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1410:5: note: candidate: ‘template<class _Tp1, class _Tp2, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(const std::__shared_ptr<_Tp1, _Lp>&, const std::__shared_ptr<_Tp2, _Lp>&)’
 1410 |     operator==(const __shared_ptr<_Tp1, _Lp>& __a,
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1410:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::__shared_ptr<_Tp1, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1416:5: note: candidate: ‘template<class _Tp, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(const std::__shared_ptr<_Tp, _Lp>&, std::nullptr_t)’
 1416 |     operator==(const __shared_ptr<_Tp, _Lp>& __a, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1416:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::__shared_ptr<_Tp, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/shared_ptr.h:53,
                 from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr_base.h:1436:5: note: candidate: ‘template<class _Tp, __gnu_cxx::_Lock_policy _Lp> bool std::operator==(std::nullptr_t, const std::__shared_ptr<_Tp, _Lp>&)’
 1436 |     operator==(nullptr_t, const __shared_ptr<_Tp, _Lp>& __a) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr_base.h:1436:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::__shared_ptr<_Tp, _Lp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:437:5: note: candidate: ‘template<class _Tp, class _Up> bool std::operator==(const std::shared_ptr<_Tp>&, const std::shared_ptr<_Tp>&)’
  437 |     operator==(const shared_ptr<_Tp>& __a, const shared_ptr<_Up>& __b) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:437:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:443:5: note: candidate: ‘template<class _Tp> bool std::operator==(const std::shared_ptr<_Tp>&, std::nullptr_t)’
  443 |     operator==(const shared_ptr<_Tp>& __a, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:443:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/memory:77,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/shared_ptr.h:464:5: note: candidate: ‘template<class _Tp> bool std::operator==(std::nullptr_t, const std::shared_ptr<_Tp>&)’
  464 |     operator==(nullptr_t, const shared_ptr<_Tp>& __a) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/shared_ptr.h:464:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::shared_ptr<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:535:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::basic_string_view<_CharT, _Traits>, std::basic_string_view<_CharT, _Traits>)’
  535 |     operator==(basic_string_view<_CharT, _Traits> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:535:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘PredicateInstance’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:541:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::basic_string_view<_CharT, _Traits>, std::__type_identity_t<std::basic_string_view<_CharT, _Traits> >)’
  541 |     operator==(basic_string_view<_CharT, _Traits> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:541:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘PredicateInstance’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/basic_string.h:48,
                 from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/string_view:564:5: note: candidate: ‘template<class _CharT, class _Traits> constexpr bool std::operator==(std::__type_identity_t<std::basic_string_view<_CharT, _Traits> >, std::basic_string_view<_CharT, _Traits>)’
  564 |     operator==(__type_identity_t<basic_string_view<_CharT, _Traits>> __x,
      |     ^~~~~~~~
/usr/include/c++/11/string_view:564:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘PredicateInstance’ is not derived from ‘std::basic_string_view<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6226:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&, const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&)’
 6226 |     operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6226:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6234:5: note: candidate: ‘template<class _CharT> typename __gnu_cxx::__enable_if<std::__is_char<_Tp>::__value, bool>::__type std::operator==(const std::__cxx11::basic_string<_CharT>&, const std::__cxx11::basic_string<_CharT>&)’
 6234 |     operator==(const basic_string<_CharT>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6234:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::__cxx11::basic_string<_CharT>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6248:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&, const _CharT*)’
 6248 |     operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6248:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/string:55,
                 from /usr/include/c++/11/bits/locale_classes.h:40,
                 from /usr/include/c++/11/bits/ios_base.h:41,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/basic_string.h:6289:5: note: candidate: ‘template<class _CharT, class _Traits, class _Alloc> bool std::operator==(const _CharT*, const std::__cxx11::basic_string<_CharT, _Traits, _Allocator>&)’
 6289 |     operator==(const _CharT* __lhs,
      |     ^~~~~~~~
/usr/include/c++/11/bits/basic_string.h:6289:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   mismatched types ‘const _CharT*’ and ‘PredicateInstance’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/locale_facets.h:48,
                 from /usr/include/c++/11/bits/basic_ios.h:37,
                 from /usr/include/c++/11/ios:44,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/streambuf_iterator.h:226:5: note: candidate: ‘template<class _CharT, class _Traits> bool std::operator==(const std::istreambuf_iterator<_CharT, _Traits>&, const std::istreambuf_iterator<_CharT, _Traits>&)’
  226 |     operator==(const istreambuf_iterator<_CharT, _Traits>& __a,
      |     ^~~~~~~~
/usr/include/c++/11/bits/streambuf_iterator.h:226:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::istreambuf_iterator<_CharT, _Traits>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/vector:67,
                 from /usr/include/gtest/gtest.h:60,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_vector.h:1892:5: note: candidate: ‘template<class _Tp, class _Alloc> bool std::operator==(const std::vector<_Tp, _Alloc>&, const std::vector<_Tp, _Alloc>&)’
 1892 |     operator==(const vector<_Tp, _Alloc>& __x, const vector<_Tp, _Alloc>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_vector.h:1892:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::vector<_Tp, _Alloc>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1045:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Tp, _Up> std::operator==(const std::optional<_Tp>&, const std::optional<_Up>&)’
 1045 |     operator==(const optional<_Tp>& __lhs, const optional<_Up>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1045:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1105:5: note: candidate: ‘template<class _Tp> constexpr bool std::operator==(const std::optional<_Tp>&, std::nullopt_t)’
 1105 |     operator==(const optional<_Tp>& __lhs, nullopt_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/optional:1105:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1116:5: note: candidate: ‘template<class _Tp> constexpr bool std::operator==(std::nullopt_t, const std::optional<_Tp>&)’
 1116 |     operator==(nullopt_t, const optional<_Tp>& __rhs) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/optional:1116:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1173:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Tp, _Up> std::operator==(const std::optional<_Tp>&, const _Up&)’
 1173 |     operator==(const optional<_Tp>& __lhs, const _Up& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1173:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2322,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/optional:1179:5: note: candidate: ‘template<class _Tp, class _Up> constexpr std::__optional_eq_t<_Up, _Tp> std::operator==(const _Up&, const std::optional<_Tp>&)’
 1179 |     operator==(const _Up& __lhs, const optional<_Tp>& __rhs)
      |     ^~~~~~~~
/usr/include/c++/11/optional:1179:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::optional<_Tp>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2380,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/variant:1249:3: note: candidate: ‘template<class ... _Types> constexpr bool std::operator==(const std::variant<_Types ...>&, const std::variant<_Types ...>&)’
 1249 |   _VARIANT_RELATION_FUNCTION_TEMPLATE(==, equal)
      |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/variant:1249:3: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::variant<_Types ...>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/map:61,
                 from /usr/include/gtest/internal/gtest-internal.h:59,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_map.h:1463:5: note: candidate: ‘template<class _Key, class _Tp, class _Compare, class _Alloc> bool std::operator==(const std::map<_Key, _Tp, _Compare, _Allocator>&, const std::map<_Key, _Tp, _Compare, _Allocator>&)’
 1463 |     operator==(const map<_Key, _Tp, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_map.h:1463:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::map<_Key, _Tp, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/map:62,
                 from /usr/include/gtest/internal/gtest-internal.h:59,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_multimap.h:1128:5: note: candidate: ‘template<class _Key, class _Tp, class _Compare, class _Alloc> bool std::operator==(const std::multimap<_Key, _Tp, _Compare, _Allocator>&, const std::multimap<_Key, _Tp, _Compare, _Allocator>&)’
 1128 |     operator==(const multimap<_Key, _Tp, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_multimap.h:1128:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::multimap<_Key, _Tp, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/set:61,
                 from /usr/include/gtest/internal/gtest-internal.h:60,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_set.h:985:5: note: candidate: ‘template<class _Key, class _Compare, class _Alloc> bool std::operator==(const std::set<_Key, _Compare, _Allocator>&, const std::set<_Key, _Compare, _Allocator>&)’
  985 |     operator==(const set<_Key, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_set.h:985:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::set<_Key, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/set:62,
                 from /usr/include/gtest/internal/gtest-internal.h:60,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_multiset.h:971:5: note: candidate: ‘template<class _Key, class _Compare, class _Alloc> bool std::operator==(const std::multiset<_Key, _Compare, _Allocator>&, const std::multiset<_Key, _Compare, _Allocator>&)’
  971 |     operator==(const multiset<_Key, _Compare, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_multiset.h:971:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::multiset<_Key, _Compare, _Allocator>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/functional:59,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/std_function.h:718:5: note: candidate: ‘template<class _Res, class ... _Args> bool std::operator==(const std::function<_Res(_ArgTypes ...)>&, std::nullptr_t)’
  718 |     operator==(const function<_Res(_Args...)>& __f, nullptr_t) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/std_function.h:718:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::function<_Res(_ArgTypes ...)>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/functional:59,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/std_function.h:725:5: note: candidate: ‘template<class _Res, class ... _Args> bool std::operator==(std::nullptr_t, const std::function<_Res(_ArgTypes ...)>&)’
  725 |     operator==(nullptr_t, const function<_Res(_Args...)>& __f) noexcept
      |     ^~~~~~~~
/usr/include/c++/11/bits/std_function.h:725:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::function<_Res(_ArgTypes ...)>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/unordered_map:47,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unordered_map.h:2134:5: note: candidate: ‘template<class _Key1, class _Tp1, class _Hash1, class _Pred1, class _Alloc1> bool std::operator==(const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&, const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&)’
 2134 |     operator==(const unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unordered_map.h:2134:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::unordered_map<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/unordered_map:47,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/unordered_map.h:2148:5: note: candidate: ‘template<class _Key1, class _Tp1, class _Hash1, class _Pred1, class _Alloc1> bool std::operator==(const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&, const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>&)’
 2148 |     operator==(const unordered_multimap<_Key, _Tp, _Hash, _Pred, _Alloc>& __x,
      |     ^~~~~~~~
/usr/include/c++/11/bits/unordered_map.h:2148:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::unordered_multimap<_Key1, _Tp1, _Hash1, _Pred1, _Alloc1>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/deque:67,
                 from /usr/include/c++/11/stack:60,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/lisp_iterators.h:7,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:10:
/usr/include/c++/11/bits/stl_deque.h:2246:5: note: candidate: ‘template<class _Tp, class _Alloc> bool std::operator==(const std::deque<_Tp, _Alloc>&, const std::deque<_Tp, _Alloc>&)’
 2246 |     operator==(const deque<_Tp, _Alloc>& __x, const deque<_Tp, _Alloc>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_deque.h:2246:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::deque<_Tp, _Alloc>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/stack:61,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/lisp_iterators.h:7,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:10:
/usr/include/c++/11/bits/stl_stack.h:319:5: note: candidate: ‘template<class _Tp, class _Seq> bool std::operator==(const std::stack<_Tp, _Seq>&, const std::stack<_Tp, _Seq>&)’
  319 |     operator==(const stack<_Tp, _Seq>& __x, const stack<_Tp, _Seq>& __y)
      |     ^~~~~~~~
/usr/include/c++/11/bits/stl_stack.h:319:5: note:   template argument deduction/substitution failed:
In file included from /usr/include/c++/11/bits/unique_ptr.h:38,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/stl_function.h:370:20: note:   ‘const PredicateInstance’ is not derived from ‘const std::stack<_Tp, _Seq>’
  370 |       { return __x == __y; }
      |                ~~~~^~~~~~
In file included from /usr/include/c++/11/bits/ios_base.h:46,
                 from /usr/include/c++/11/ios:42,
                 from /usr/include/c++/11/ostream:38,
                 from /usr/include/gtest/gtest.h:58,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/system_error:362:3: note: candidate: ‘bool std::operator==(const std::error_code&, const std::error_code&)’
  362 |   operator==(const error_code& __lhs, const error_code& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:362:32: note:   no known conversion for argument 1 from ‘const PredicateInstance’ to ‘const std::error_code&’
  362 |   operator==(const error_code& __lhs, const error_code& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:368:3: note: candidate: ‘bool std::operator==(const std::error_code&, const std::error_condition&)’
  368 |   operator==(const error_code& __lhs, const error_condition& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:368:32: note:   no known conversion for argument 1 from ‘const PredicateInstance’ to ‘const std::error_code&’
  368 |   operator==(const error_code& __lhs, const error_condition& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:376:3: note: candidate: ‘bool std::operator==(const std::error_condition&, const std::error_condition&)’
  376 |   operator==(const error_condition& __lhs,
      |   ^~~~~~~~
/usr/include/c++/11/system_error:376:37: note:   no known conversion for argument 1 from ‘const PredicateInstance’ to ‘const std::error_condition&’
  376 |   operator==(const error_condition& __lhs,
      |              ~~~~~~~~~~~~~~~~~~~~~~~^~~~~
/usr/include/c++/11/system_error:408:3: note: candidate: ‘bool std::operator==(const std::error_condition&, const std::error_code&)’
  408 |   operator==(const error_condition& __lhs, const error_code& __rhs) noexcept
      |   ^~~~~~~~
/usr/include/c++/11/system_error:408:37: note:   no known conversion for argument 1 from ‘const PredicateInstance’ to ‘const std::error_condition&’
  408 |   operator==(const error_condition& __lhs, const error_code& __rhs) noexcept
      |              ~~~~~~~~~~~~~~~~~~~~~~~^~~~~
In file included from /usr/include/gtest/internal/gtest-port.h:2380,
                 from /usr/include/gtest/internal/gtest-internal.h:40,
                 from /usr/include/gtest/gtest.h:62,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/variant:1256:18: note: candidate: ‘constexpr bool std::operator==(std::monostate, std::monostate)’
 1256 |   constexpr bool operator==(monostate, monostate) noexcept { return true; }
      |                  ^~~~~~~~
/usr/include/c++/11/variant:1256:29: note:   no known conversion for argument 1 from ‘const PredicateInstance’ to ‘std::monostate’
 1256 |   constexpr bool operator==(monostate, monostate) noexcept { return true; }
      |                             ^~~~~~~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/tuple: In instantiation of ‘std::pair<_T1, _T2>::pair(std::tuple<_Args1 ...>&, std::tuple<_Args2 ...>&, std::_Index_tuple<_Indexes1 ...>, std::_Index_tuple<_Indexes2 ...>) [with _Args1 = {const Type&}; long unsigned int ..._Indexes1 = {0}; _Args2 = {}; long unsigned int ..._Indexes2 = {}; _T1 = const Type; _T2 = Type]’:
/usr/include/c++/11/tuple:1813:63:   required from ‘std::pair<_T1, _T2>::pair(std::piecewise_construct_t, std::tuple<_Args1 ...>, std::tuple<_Args2 ...>) [with _Args1 = {const Type&}; _Args2 = {}; _T1 = const Type; _T2 = Type]’
/usr/include/c++/11/ext/new_allocator.h:162:4:   required from ‘void __gnu_cxx::new_allocator<_Tp>::construct(_Up*, _Args&& ...) [with _Up = std::pair<const Type, Type>; _Args = {const std::piecewise_construct_t&, std::tuple<const Type&>, std::tuple<>}; _Tp = std::__detail::_Hash_node<std::pair<const Type, Type>, true>]’
/usr/include/c++/11/bits/alloc_traits.h:516:17:   required from ‘static void std::allocator_traits<std::allocator<_Tp1> >::construct(std::allocator_traits<std::allocator<_Tp1> >::allocator_type&, _Up*, _Args&& ...) [with _Up = std::pair<const Type, Type>; _Args = {const std::piecewise_construct_t&, std::tuple<const Type&>, std::tuple<>}; _Tp = std::__detail::_Hash_node<std::pair<const Type, Type>, true>; std::allocator_traits<std::allocator<_Tp1> >::allocator_type = std::allocator<std::__detail::_Hash_node<std::pair<const Type, Type>, true> >]’
/usr/include/c++/11/bits/hashtable_policy.h:1878:36:   required from ‘std::__detail::_Hashtable_alloc<_NodeAlloc>::__node_type* std::__detail::_Hashtable_alloc<_NodeAlloc>::_M_allocate_node(_Args&& ...) [with _Args = {const std::piecewise_construct_t&, std::tuple<const Type&>, std::tuple<>}; _NodeAlloc = std::allocator<std::__detail::_Hash_node<std::pair<const Type, Type>, true> >; std::__detail::_Hashtable_alloc<_NodeAlloc>::__node_ptr = std::allocator<std::__detail::_Hash_node<std::pair<const Type, Type>, true> >::value_type*]’
/usr/include/c++/11/bits/hashtable.h:304:35:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_Scoped_node::_Scoped_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hashtable_alloc*, _Args&& ...) [with _Args = {const std::piecewise_construct_t&, std::tuple<const Type&>, std::tuple<>}; _Key = Type; _Value = std::pair<const Type, Type>; _Alloc = std::allocator<std::pair<const Type, Type> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<Type>; _Hash = std::hash<Type>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hashtable_alloc = std::_Hashtable<Type, std::pair<const Type, Type>, std::allocator<std::pair<const Type, Type> >, std::__detail::_Select1st, std::equal_to<Type>, std::hash<Type>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true> >::__hashtable_alloc]’
/usr/include/c++/11/bits/hashtable_policy.h:707:42:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = Type; _Pair = std::pair<const Type, Type>; _Alloc = std::allocator<std::pair<const Type, Type> >; _Equal = std::equal_to<Type>; _Hash = std::hash<Type>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = Type; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = Type]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = Type; _Tp = Type; _Hash = std::hash<Type>; _Pred = std::equal_to<Type>; _Alloc = std::allocator<std::pair<const Type, Type> >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = Type; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = Type]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:56:40:   required from here
/usr/include/c++/11/tuple:1824:9: error: call of overloaded ‘Type()’ is ambiguous
 1824 |         second(std::forward<_Args2>(std::get<_Indexes2>(__tuple2))...)
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:20:5: note: candidate: ‘Type::Type(std::string, std::string)’
   20 |     Type(string name_ = "<NULL>", string parent_ = "<NULL>")
      |     ^~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:13:5: note: candidate: ‘Type::Type(std::string, std::vector<std::__cxx11::basic_string<char> >)’
   13 |     Type(string name_ = "<NULL>", std::vector<string> parents_ = {"<NULL>"})
      |     ^~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/tuple: In instantiation of ‘std::pair<_T1, _T2>::pair(std::tuple<_Args1 ...>&, std::tuple<_Args2 ...>&, std::_Index_tuple<_Indexes1 ...>, std::_Index_tuple<_Indexes2 ...>) [with _Args1 = {const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&}; long unsigned int ..._Indexes1 = {0}; _Args2 = {}; long unsigned int ..._Indexes2 = {}; _T1 = const std::__cxx11::basic_string<char>; _T2 = Type]’:
/usr/include/c++/11/tuple:1813:63:   required from ‘std::pair<_T1, _T2>::pair(std::piecewise_construct_t, std::tuple<_Args1 ...>, std::tuple<_Args2 ...>) [with _Args1 = {const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&}; _Args2 = {}; _T1 = const std::__cxx11::basic_string<char>; _T2 = Type]’
/usr/include/c++/11/ext/new_allocator.h:162:4:   required from ‘void __gnu_cxx::new_allocator<_Tp>::construct(_Up*, _Args&& ...) [with _Up = std::pair<const std::__cxx11::basic_string<char>, Type>; _Args = {const std::piecewise_construct_t&, std::tuple<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&>, std::tuple<>}; _Tp = std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Type>, true>]’
/usr/include/c++/11/bits/alloc_traits.h:516:17:   required from ‘static void std::allocator_traits<std::allocator<_Tp1> >::construct(std::allocator_traits<std::allocator<_Tp1> >::allocator_type&, _Up*, _Args&& ...) [with _Up = std::pair<const std::__cxx11::basic_string<char>, Type>; _Args = {const std::piecewise_construct_t&, std::tuple<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&>, std::tuple<>}; _Tp = std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Type>, true>; std::allocator_traits<std::allocator<_Tp1> >::allocator_type = std::allocator<std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Type>, true> >]’
/usr/include/c++/11/bits/hashtable_policy.h:1878:36:   required from ‘std::__detail::_Hashtable_alloc<_NodeAlloc>::__node_type* std::__detail::_Hashtable_alloc<_NodeAlloc>::_M_allocate_node(_Args&& ...) [with _Args = {const std::piecewise_construct_t&, std::tuple<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&>, std::tuple<>}; _NodeAlloc = std::allocator<std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Type>, true> >; std::__detail::_Hashtable_alloc<_NodeAlloc>::__node_ptr = std::allocator<std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Type>, true> >::value_type*]’
/usr/include/c++/11/bits/hashtable.h:304:35:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_Scoped_node::_Scoped_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hashtable_alloc*, _Args&& ...) [with _Args = {const std::piecewise_construct_t&, std::tuple<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&>, std::tuple<>}; _Key = std::__cxx11::basic_string<char>; _Value = std::pair<const std::__cxx11::basic_string<char>, Type>; _Alloc = std::allocator<std::pair<const std::__cxx11::basic_string<char>, Type> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<std::__cxx11::basic_string<char> >; _Hash = std::hash<std::__cxx11::basic_string<char> >; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hashtable_alloc = std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Type>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, Type> >, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char> >, std::hash<std::__cxx11::basic_string<char> >, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true> >::__hashtable_alloc]’
/usr/include/c++/11/bits/hashtable_policy.h:707:42:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = std::__cxx11::basic_string<char>; _Pair = std::pair<const std::__cxx11::basic_string<char>, Type>; _Alloc = std::allocator<std::pair<const std::__cxx11::basic_string<char>, Type> >; _Equal = std::equal_to<std::__cxx11::basic_string<char> >; _Hash = std::hash<std::__cxx11::basic_string<char> >; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = Type; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = std::__cxx11::basic_string<char>]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = std::__cxx11::basic_string<char>; _Tp = Type; _Hash = std::hash<std::__cxx11::basic_string<char> >; _Pred = std::equal_to<std::__cxx11::basic_string<char> >; _Alloc = std::allocator<std::pair<const std::__cxx11::basic_string<char>, Type> >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = Type; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = std::__cxx11::basic_string<char>]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:57:33:   required from here
/usr/include/c++/11/tuple:1824:9: error: call of overloaded ‘Type()’ is ambiguous
 1824 |         second(std::forward<_Args2>(std::get<_Indexes2>(__tuple2))...)
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:20:5: note: candidate: ‘Type::Type(std::string, std::string)’
   20 |     Type(string name_ = "<NULL>", string parent_ = "<NULL>")
      |     ^~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:13:5: note: candidate: ‘Type::Type(std::string, std::vector<std::__cxx11::basic_string<char> >)’
   13 |     Type(string name_ = "<NULL>", std::vector<string> parents_ = {"<NULL>"})
      |     ^~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/tuple: In instantiation of ‘std::pair<_T1, _T2>::pair(std::tuple<_Args1 ...>&, std::tuple<_Args2 ...>&, std::_Index_tuple<_Indexes1 ...>, std::_Index_tuple<_Indexes2 ...>) [with _Args1 = {std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&&}; long unsigned int ..._Indexes1 = {0}; _Args2 = {}; long unsigned int ..._Indexes2 = {}; _T1 = const std::__cxx11::basic_string<char>; _T2 = Type]’:
/usr/include/c++/11/tuple:1813:63:   required from ‘std::pair<_T1, _T2>::pair(std::piecewise_construct_t, std::tuple<_Args1 ...>, std::tuple<_Args2 ...>) [with _Args1 = {std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&&}; _Args2 = {}; _T1 = const std::__cxx11::basic_string<char>; _T2 = Type]’
/usr/include/c++/11/ext/new_allocator.h:162:4:   required from ‘void __gnu_cxx::new_allocator<_Tp>::construct(_Up*, _Args&& ...) [with _Up = std::pair<const std::__cxx11::basic_string<char>, Type>; _Args = {const std::piecewise_construct_t&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&&>, std::tuple<>}; _Tp = std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Type>, true>]’
/usr/include/c++/11/bits/alloc_traits.h:516:17:   required from ‘static void std::allocator_traits<std::allocator<_Tp1> >::construct(std::allocator_traits<std::allocator<_Tp1> >::allocator_type&, _Up*, _Args&& ...) [with _Up = std::pair<const std::__cxx11::basic_string<char>, Type>; _Args = {const std::piecewise_construct_t&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&&>, std::tuple<>}; _Tp = std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Type>, true>; std::allocator_traits<std::allocator<_Tp1> >::allocator_type = std::allocator<std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Type>, true> >]’
/usr/include/c++/11/bits/hashtable_policy.h:1878:36:   required from ‘std::__detail::_Hashtable_alloc<_NodeAlloc>::__node_type* std::__detail::_Hashtable_alloc<_NodeAlloc>::_M_allocate_node(_Args&& ...) [with _Args = {const std::piecewise_construct_t&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&&>, std::tuple<>}; _NodeAlloc = std::allocator<std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Type>, true> >; std::__detail::_Hashtable_alloc<_NodeAlloc>::__node_ptr = std::allocator<std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Type>, true> >::value_type*]’
/usr/include/c++/11/bits/hashtable.h:304:35:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_Scoped_node::_Scoped_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hashtable_alloc*, _Args&& ...) [with _Args = {const std::piecewise_construct_t&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&&>, std::tuple<>}; _Key = std::__cxx11::basic_string<char>; _Value = std::pair<const std::__cxx11::basic_string<char>, Type>; _Alloc = std::allocator<std::pair<const std::__cxx11::basic_string<char>, Type> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<std::__cxx11::basic_string<char> >; _Hash = std::hash<std::__cxx11::basic_string<char> >; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hashtable_alloc = std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Type>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, Type> >, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char> >, std::hash<std::__cxx11::basic_string<char> >, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true> >::__hashtable_alloc]’
/usr/include/c++/11/bits/hashtable_policy.h:734:42:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type&&) [with _Key = std::__cxx11::basic_string<char>; _Pair = std::pair<const std::__cxx11::basic_string<char>, Type>; _Alloc = std::allocator<std::pair<const std::__cxx11::basic_string<char>, Type> >; _Equal = std::equal_to<std::__cxx11::basic_string<char> >; _Hash = std::hash<std::__cxx11::basic_string<char> >; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = Type; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = std::__cxx11::basic_string<char>]’
/usr/include/c++/11/bits/unordered_map.h:984:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type&&) [with _Key = std::__cxx11::basic_string<char>; _Tp = Type; _Hash = std::hash<std::__cxx11::basic_string<char> >; _Pred = std::equal_to<std::__cxx11::basic_string<char> >; _Alloc = std::allocator<std::pair<const std::__cxx11::basic_string<char>, Type> >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = Type; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = std::__cxx11::basic_string<char>]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:62:28:   required from here
/usr/include/c++/11/tuple:1824:9: error: call of overloaded ‘Type()’ is ambiguous
 1824 |         second(std::forward<_Args2>(std::get<_Indexes2>(__tuple2))...)
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:20:5: note: candidate: ‘Type::Type(std::string, std::string)’
   20 |     Type(string name_ = "<NULL>", string parent_ = "<NULL>")
      |     ^~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:13:5: note: candidate: ‘Type::Type(std::string, std::vector<std::__cxx11::basic_string<char> >)’
   13 |     Type(string name_ = "<NULL>", std::vector<string> parents_ = {"<NULL>"})
      |     ^~~~
In file included from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/tuple: In instantiation of ‘std::pair<_T1, _T2>::pair(std::tuple<_Args1 ...>&, std::tuple<_Args2 ...>&, std::_Index_tuple<_Indexes1 ...>, std::_Index_tuple<_Indexes2 ...>) [with _Args1 = {const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&}; long unsigned int ..._Indexes1 = {0}; _Args2 = {}; long unsigned int ..._Indexes2 = {}; _T1 = const std::__cxx11::basic_string<char>; _T2 = Action]’:
/usr/include/c++/11/tuple:1813:63:   required from ‘std::pair<_T1, _T2>::pair(std::piecewise_construct_t, std::tuple<_Args1 ...>, std::tuple<_Args2 ...>) [with _Args1 = {const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&}; _Args2 = {}; _T1 = const std::__cxx11::basic_string<char>; _T2 = Action]’
/usr/include/c++/11/ext/new_allocator.h:162:4:   required from ‘void __gnu_cxx::new_allocator<_Tp>::construct(_Up*, _Args&& ...) [with _Up = std::pair<const std::__cxx11::basic_string<char>, Action>; _Args = {const std::piecewise_construct_t&, std::tuple<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&>, std::tuple<>}; _Tp = std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Action>, true>]’
/usr/include/c++/11/bits/alloc_traits.h:516:17:   required from ‘static void std::allocator_traits<std::allocator<_Tp1> >::construct(std::allocator_traits<std::allocator<_Tp1> >::allocator_type&, _Up*, _Args&& ...) [with _Up = std::pair<const std::__cxx11::basic_string<char>, Action>; _Args = {const std::piecewise_construct_t&, std::tuple<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&>, std::tuple<>}; _Tp = std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Action>, true>; std::allocator_traits<std::allocator<_Tp1> >::allocator_type = std::allocator<std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Action>, true> >]’
/usr/include/c++/11/bits/hashtable_policy.h:1878:36:   required from ‘std::__detail::_Hashtable_alloc<_NodeAlloc>::__node_type* std::__detail::_Hashtable_alloc<_NodeAlloc>::_M_allocate_node(_Args&& ...) [with _Args = {const std::piecewise_construct_t&, std::tuple<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&>, std::tuple<>}; _NodeAlloc = std::allocator<std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Action>, true> >; std::__detail::_Hashtable_alloc<_NodeAlloc>::__node_ptr = std::allocator<std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Action>, true> >::value_type*]’
/usr/include/c++/11/bits/hashtable.h:304:35:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_Scoped_node::_Scoped_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hashtable_alloc*, _Args&& ...) [with _Args = {const std::piecewise_construct_t&, std::tuple<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&>, std::tuple<>}; _Key = std::__cxx11::basic_string<char>; _Value = std::pair<const std::__cxx11::basic_string<char>, Action>; _Alloc = std::allocator<std::pair<const std::__cxx11::basic_string<char>, Action> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<std::__cxx11::basic_string<char> >; _Hash = std::hash<std::__cxx11::basic_string<char> >; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hashtable_alloc = std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Action>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, Action> >, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char> >, std::hash<std::__cxx11::basic_string<char> >, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true> >::__hashtable_alloc]’
/usr/include/c++/11/bits/hashtable_policy.h:707:42:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = std::__cxx11::basic_string<char>; _Pair = std::pair<const std::__cxx11::basic_string<char>, Action>; _Alloc = std::allocator<std::pair<const std::__cxx11::basic_string<char>, Action> >; _Equal = std::equal_to<std::__cxx11::basic_string<char> >; _Hash = std::hash<std::__cxx11::basic_string<char> >; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = Action; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = std::__cxx11::basic_string<char>]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = std::__cxx11::basic_string<char>; _Tp = Action; _Hash = std::hash<std::__cxx11::basic_string<char> >; _Pred = std::equal_to<std::__cxx11::basic_string<char> >; _Alloc = std::allocator<std::pair<const std::__cxx11::basic_string<char>, Action> >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = Action; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = std::__cxx11::basic_string<char>]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:91:37:   required from here
/usr/include/c++/11/tuple:1824:9: error: no matching function for call to ‘Action::Action()’
 1824 |         second(std::forward<_Args2>(std::get<_Indexes2>(__tuple2))...)
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:53:5: note: candidate: ‘Action::Action(std::string, std::vector<std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >, std::vector<Predicate>, Effect)’
   53 |     Action(string name, vector<pair<string, vector<Type>>> signature,
      |     ^~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:53:5: note:   candidate expects 4 arguments, 0 provided
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:51:7: note: candidate: ‘Action::Action(const Action&)’
   51 | class Action {
      |       ^~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:51:7: note:   candidate expects 1 argument, 0 provided
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:51:7: note: candidate: ‘Action::Action(Action&&)’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:51:7: note:   candidate expects 1 argument, 0 provided
In file included from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/tuple: In instantiation of ‘std::pair<_T1, _T2>::pair(std::tuple<_Args1 ...>&, std::tuple<_Args2 ...>&, std::_Index_tuple<_Indexes1 ...>, std::_Index_tuple<_Indexes2 ...>) [with _Args1 = {const PredicateVar&}; long unsigned int ..._Indexes1 = {0}; _Args2 = {}; long unsigned int ..._Indexes2 = {}; _T1 = const PredicateVar; _T2 = Predicate]’:
/usr/include/c++/11/tuple:1813:63:   required from ‘std::pair<_T1, _T2>::pair(std::piecewise_construct_t, std::tuple<_Args1 ...>, std::tuple<_Args2 ...>) [with _Args1 = {const PredicateVar&}; _Args2 = {}; _T1 = const PredicateVar; _T2 = Predicate]’
/usr/include/c++/11/ext/new_allocator.h:162:4:   required from ‘void __gnu_cxx::new_allocator<_Tp>::construct(_Up*, _Args&& ...) [with _Up = std::pair<const PredicateVar, Predicate>; _Args = {const std::piecewise_construct_t&, std::tuple<const PredicateVar&>, std::tuple<>}; _Tp = std::__detail::_Hash_node<std::pair<const PredicateVar, Predicate>, true>]’
/usr/include/c++/11/bits/alloc_traits.h:516:17:   required from ‘static void std::allocator_traits<std::allocator<_Tp1> >::construct(std::allocator_traits<std::allocator<_Tp1> >::allocator_type&, _Up*, _Args&& ...) [with _Up = std::pair<const PredicateVar, Predicate>; _Args = {const std::piecewise_construct_t&, std::tuple<const PredicateVar&>, std::tuple<>}; _Tp = std::__detail::_Hash_node<std::pair<const PredicateVar, Predicate>, true>; std::allocator_traits<std::allocator<_Tp1> >::allocator_type = std::allocator<std::__detail::_Hash_node<std::pair<const PredicateVar, Predicate>, true> >]’
/usr/include/c++/11/bits/hashtable_policy.h:1878:36:   required from ‘std::__detail::_Hashtable_alloc<_NodeAlloc>::__node_type* std::__detail::_Hashtable_alloc<_NodeAlloc>::_M_allocate_node(_Args&& ...) [with _Args = {const std::piecewise_construct_t&, std::tuple<const PredicateVar&>, std::tuple<>}; _NodeAlloc = std::allocator<std::__detail::_Hash_node<std::pair<const PredicateVar, Predicate>, true> >; std::__detail::_Hashtable_alloc<_NodeAlloc>::__node_ptr = std::allocator<std::__detail::_Hash_node<std::pair<const PredicateVar, Predicate>, true> >::value_type*]’
/usr/include/c++/11/bits/hashtable.h:304:35:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_Scoped_node::_Scoped_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hashtable_alloc*, _Args&& ...) [with _Args = {const std::piecewise_construct_t&, std::tuple<const PredicateVar&>, std::tuple<>}; _Key = PredicateVar; _Value = std::pair<const PredicateVar, Predicate>; _Alloc = std::allocator<std::pair<const PredicateVar, Predicate> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<PredicateVar>; _Hash = std::hash<PredicateVar>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hashtable_alloc = std::_Hashtable<PredicateVar, std::pair<const PredicateVar, Predicate>, std::allocator<std::pair<const PredicateVar, Predicate> >, std::__detail::_Select1st, std::equal_to<PredicateVar>, std::hash<PredicateVar>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true> >::__hashtable_alloc]’
/usr/include/c++/11/bits/hashtable_policy.h:707:42:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = PredicateVar; _Pair = std::pair<const PredicateVar, Predicate>; _Alloc = std::allocator<std::pair<const PredicateVar, Predicate> >; _Equal = std::equal_to<PredicateVar>; _Hash = std::hash<PredicateVar>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = Predicate; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = PredicateVar]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = PredicateVar; _Tp = Predicate; _Hash = std::hash<PredicateVar>; _Pred = std::equal_to<PredicateVar>; _Alloc = std::allocator<std::pair<const PredicateVar, Predicate> >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = Predicate; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = PredicateVar]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:153:51:   required from here
/usr/include/c++/11/tuple:1824:9: error: no matching function for call to ‘Predicate::Predicate()’
 1824 |         second(std::forward<_Args2>(std::get<_Indexes2>(__tuple2))...)
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:34:5: note: candidate: ‘Predicate::Predicate(std::string, std::vector<std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >)’
   34 |     Predicate(string name, vector<pair<string, vector<Type>>> signature)
      |     ^~~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:34:5: note:   candidate expects 2 arguments, 0 provided
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note: candidate: ‘Predicate::Predicate(const Predicate&)’
   32 | class Predicate {
      |       ^~~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note:   candidate expects 1 argument, 0 provided
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note: candidate: ‘Predicate::Predicate(Predicate&&)’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note:   candidate expects 1 argument, 0 provided
In file included from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/tuple: In instantiation of ‘std::pair<_T1, _T2>::pair(std::tuple<_Args1 ...>&, std::tuple<_Args2 ...>&, std::_Index_tuple<_Indexes1 ...>, std::_Index_tuple<_Indexes2 ...>) [with _Args1 = {const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&}; long unsigned int ..._Indexes1 = {0}; _Args2 = {}; long unsigned int ..._Indexes2 = {}; _T1 = const std::__cxx11::basic_string<char>; _T2 = Predicate]’:
/usr/include/c++/11/tuple:1813:63:   required from ‘std::pair<_T1, _T2>::pair(std::piecewise_construct_t, std::tuple<_Args1 ...>, std::tuple<_Args2 ...>) [with _Args1 = {const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&}; _Args2 = {}; _T1 = const std::__cxx11::basic_string<char>; _T2 = Predicate]’
/usr/include/c++/11/ext/new_allocator.h:162:4:   required from ‘void __gnu_cxx::new_allocator<_Tp>::construct(_Up*, _Args&& ...) [with _Up = std::pair<const std::__cxx11::basic_string<char>, Predicate>; _Args = {const std::piecewise_construct_t&, std::tuple<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&>, std::tuple<>}; _Tp = std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Predicate>, true>]’
/usr/include/c++/11/bits/alloc_traits.h:516:17:   required from ‘static void std::allocator_traits<std::allocator<_Tp1> >::construct(std::allocator_traits<std::allocator<_Tp1> >::allocator_type&, _Up*, _Args&& ...) [with _Up = std::pair<const std::__cxx11::basic_string<char>, Predicate>; _Args = {const std::piecewise_construct_t&, std::tuple<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&>, std::tuple<>}; _Tp = std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Predicate>, true>; std::allocator_traits<std::allocator<_Tp1> >::allocator_type = std::allocator<std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Predicate>, true> >]’
/usr/include/c++/11/bits/hashtable_policy.h:1878:36:   required from ‘std::__detail::_Hashtable_alloc<_NodeAlloc>::__node_type* std::__detail::_Hashtable_alloc<_NodeAlloc>::_M_allocate_node(_Args&& ...) [with _Args = {const std::piecewise_construct_t&, std::tuple<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&>, std::tuple<>}; _NodeAlloc = std::allocator<std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Predicate>, true> >; std::__detail::_Hashtable_alloc<_NodeAlloc>::__node_ptr = std::allocator<std::__detail::_Hash_node<std::pair<const std::__cxx11::basic_string<char>, Predicate>, true> >::value_type*]’
/usr/include/c++/11/bits/hashtable.h:304:35:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_Scoped_node::_Scoped_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hashtable_alloc*, _Args&& ...) [with _Args = {const std::piecewise_construct_t&, std::tuple<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&>, std::tuple<>}; _Key = std::__cxx11::basic_string<char>; _Value = std::pair<const std::__cxx11::basic_string<char>, Predicate>; _Alloc = std::allocator<std::pair<const std::__cxx11::basic_string<char>, Predicate> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<std::__cxx11::basic_string<char> >; _Hash = std::hash<std::__cxx11::basic_string<char> >; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hashtable_alloc = std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Predicate>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, Predicate> >, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char> >, std::hash<std::__cxx11::basic_string<char> >, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true> >::__hashtable_alloc]’
/usr/include/c++/11/bits/hashtable_policy.h:707:42:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = std::__cxx11::basic_string<char>; _Pair = std::pair<const std::__cxx11::basic_string<char>, Predicate>; _Alloc = std::allocator<std::pair<const std::__cxx11::basic_string<char>, Predicate> >; _Equal = std::equal_to<std::__cxx11::basic_string<char> >; _Hash = std::hash<std::__cxx11::basic_string<char> >; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = Predicate; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = std::__cxx11::basic_string<char>]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = std::__cxx11::basic_string<char>; _Tp = Predicate; _Hash = std::hash<std::__cxx11::basic_string<char> >; _Pred = std::equal_to<std::__cxx11::basic_string<char> >; _Alloc = std::allocator<std::pair<const std::__cxx11::basic_string<char>, Predicate> >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = Predicate; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = std::__cxx11::basic_string<char>]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:161:39:   required from here
/usr/include/c++/11/tuple:1824:9: error: no matching function for call to ‘Predicate::Predicate()’
 1824 |         second(std::forward<_Args2>(std::get<_Indexes2>(__tuple2))...)
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:34:5: note: candidate: ‘Predicate::Predicate(std::string, std::vector<std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >)’
   34 |     Predicate(string name, vector<pair<string, vector<Type>>> signature)
      |     ^~~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:34:5: note:   candidate expects 2 arguments, 0 provided
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note: candidate: ‘Predicate::Predicate(const Predicate&)’
   32 | class Predicate {
      |       ^~~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note:   candidate expects 1 argument, 0 provided
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note: candidate: ‘Predicate::Predicate(Predicate&&)’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note:   candidate expects 1 argument, 0 provided
In file included from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/tuple: In instantiation of ‘std::pair<_T1, _T2>::pair(std::tuple<_Args1 ...>&, std::tuple<_Args2 ...>&, std::_Index_tuple<_Indexes1 ...>, std::_Index_tuple<_Indexes2 ...>) [with _Args1 = {const ActionStmt&}; long unsigned int ..._Indexes1 = {0}; _Args2 = {}; long unsigned int ..._Indexes2 = {}; _T1 = const ActionStmt; _T2 = Action]’:
/usr/include/c++/11/tuple:1813:63:   required from ‘std::pair<_T1, _T2>::pair(std::piecewise_construct_t, std::tuple<_Args1 ...>, std::tuple<_Args2 ...>) [with _Args1 = {const ActionStmt&}; _Args2 = {}; _T1 = const ActionStmt; _T2 = Action]’
/usr/include/c++/11/ext/new_allocator.h:162:4:   required from ‘void __gnu_cxx::new_allocator<_Tp>::construct(_Up*, _Args&& ...) [with _Up = std::pair<const ActionStmt, Action>; _Args = {const std::piecewise_construct_t&, std::tuple<const ActionStmt&>, std::tuple<>}; _Tp = std::__detail::_Hash_node<std::pair<const ActionStmt, Action>, true>]’
/usr/include/c++/11/bits/alloc_traits.h:516:17:   required from ‘static void std::allocator_traits<std::allocator<_Tp1> >::construct(std::allocator_traits<std::allocator<_Tp1> >::allocator_type&, _Up*, _Args&& ...) [with _Up = std::pair<const ActionStmt, Action>; _Args = {const std::piecewise_construct_t&, std::tuple<const ActionStmt&>, std::tuple<>}; _Tp = std::__detail::_Hash_node<std::pair<const ActionStmt, Action>, true>; std::allocator_traits<std::allocator<_Tp1> >::allocator_type = std::allocator<std::__detail::_Hash_node<std::pair<const ActionStmt, Action>, true> >]’
/usr/include/c++/11/bits/hashtable_policy.h:1878:36:   required from ‘std::__detail::_Hashtable_alloc<_NodeAlloc>::__node_type* std::__detail::_Hashtable_alloc<_NodeAlloc>::_M_allocate_node(_Args&& ...) [with _Args = {const std::piecewise_construct_t&, std::tuple<const ActionStmt&>, std::tuple<>}; _NodeAlloc = std::allocator<std::__detail::_Hash_node<std::pair<const ActionStmt, Action>, true> >; std::__detail::_Hashtable_alloc<_NodeAlloc>::__node_ptr = std::allocator<std::__detail::_Hash_node<std::pair<const ActionStmt, Action>, true> >::value_type*]’
/usr/include/c++/11/bits/hashtable.h:304:35:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_Scoped_node::_Scoped_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hashtable_alloc*, _Args&& ...) [with _Args = {const std::piecewise_construct_t&, std::tuple<const ActionStmt&>, std::tuple<>}; _Key = ActionStmt; _Value = std::pair<const ActionStmt, Action>; _Alloc = std::allocator<std::pair<const ActionStmt, Action> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<ActionStmt>; _Hash = std::hash<ActionStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hashtable_alloc = std::_Hashtable<ActionStmt, std::pair<const ActionStmt, Action>, std::allocator<std::pair<const ActionStmt, Action> >, std::__detail::_Select1st, std::equal_to<ActionStmt>, std::hash<ActionStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true> >::__hashtable_alloc]’
/usr/include/c++/11/bits/hashtable_policy.h:707:42:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = ActionStmt; _Pair = std::pair<const ActionStmt, Action>; _Alloc = std::allocator<std::pair<const ActionStmt, Action> >; _Equal = std::equal_to<ActionStmt>; _Hash = std::hash<ActionStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = Action; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = ActionStmt]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = ActionStmt; _Tp = Action; _Hash = std::hash<ActionStmt>; _Pred = std::equal_to<ActionStmt>; _Alloc = std::allocator<std::pair<const ActionStmt, Action> >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = Action; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = ActionStmt]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:219:30:   required from here
/usr/include/c++/11/tuple:1824:9: error: no matching function for call to ‘Action::Action()’
 1824 |         second(std::forward<_Args2>(std::get<_Indexes2>(__tuple2))...)
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:53:5: note: candidate: ‘Action::Action(std::string, std::vector<std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >, std::vector<Predicate>, Effect)’
   53 |     Action(string name, vector<pair<string, vector<Type>>> signature,
      |     ^~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:53:5: note:   candidate expects 4 arguments, 0 provided
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:51:7: note: candidate: ‘Action::Action(const Action&)’
   51 | class Action {
      |       ^~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:51:7: note:   candidate expects 1 argument, 0 provided
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:51:7: note: candidate: ‘Action::Action(Action&&)’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:51:7: note:   candidate expects 1 argument, 0 provided
In file included from /usr/include/c++/11/bits/unique_ptr.h:37,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/tuple: In instantiation of ‘std::pair<_T1, _T2>::pair(std::tuple<_Args1 ...>&, std::tuple<_Args2 ...>&, std::_Index_tuple<_Indexes1 ...>, std::_Index_tuple<_Indexes2 ...>) [with _Args1 = {const PredicateInstance&}; long unsigned int ..._Indexes1 = {0}; _Args2 = {}; long unsigned int ..._Indexes2 = {}; _T1 = const PredicateInstance; _T2 = Predicate]’:
/usr/include/c++/11/tuple:1813:63:   required from ‘std::pair<_T1, _T2>::pair(std::piecewise_construct_t, std::tuple<_Args1 ...>, std::tuple<_Args2 ...>) [with _Args1 = {const PredicateInstance&}; _Args2 = {}; _T1 = const PredicateInstance; _T2 = Predicate]’
/usr/include/c++/11/ext/new_allocator.h:162:4:   required from ‘void __gnu_cxx::new_allocator<_Tp>::construct(_Up*, _Args&& ...) [with _Up = std::pair<const PredicateInstance, Predicate>; _Args = {const std::piecewise_construct_t&, std::tuple<const PredicateInstance&>, std::tuple<>}; _Tp = std::__detail::_Hash_node<std::pair<const PredicateInstance, Predicate>, true>]’
/usr/include/c++/11/bits/alloc_traits.h:516:17:   required from ‘static void std::allocator_traits<std::allocator<_Tp1> >::construct(std::allocator_traits<std::allocator<_Tp1> >::allocator_type&, _Up*, _Args&& ...) [with _Up = std::pair<const PredicateInstance, Predicate>; _Args = {const std::piecewise_construct_t&, std::tuple<const PredicateInstance&>, std::tuple<>}; _Tp = std::__detail::_Hash_node<std::pair<const PredicateInstance, Predicate>, true>; std::allocator_traits<std::allocator<_Tp1> >::allocator_type = std::allocator<std::__detail::_Hash_node<std::pair<const PredicateInstance, Predicate>, true> >]’
/usr/include/c++/11/bits/hashtable_policy.h:1878:36:   required from ‘std::__detail::_Hashtable_alloc<_NodeAlloc>::__node_type* std::__detail::_Hashtable_alloc<_NodeAlloc>::_M_allocate_node(_Args&& ...) [with _Args = {const std::piecewise_construct_t&, std::tuple<const PredicateInstance&>, std::tuple<>}; _NodeAlloc = std::allocator<std::__detail::_Hash_node<std::pair<const PredicateInstance, Predicate>, true> >; std::__detail::_Hashtable_alloc<_NodeAlloc>::__node_ptr = std::allocator<std::__detail::_Hash_node<std::pair<const PredicateInstance, Predicate>, true> >::value_type*]’
/usr/include/c++/11/bits/hashtable.h:304:35:   required from ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::_Scoped_node::_Scoped_node(std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hashtable_alloc*, _Args&& ...) [with _Args = {const std::piecewise_construct_t&, std::tuple<const PredicateInstance&>, std::tuple<>}; _Key = PredicateInstance; _Value = std::pair<const PredicateInstance, Predicate>; _Alloc = std::allocator<std::pair<const PredicateInstance, Predicate> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<PredicateInstance>; _Hash = std::hash<PredicateInstance>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::__hashtable_alloc = std::_Hashtable<PredicateInstance, std::pair<const PredicateInstance, Predicate>, std::allocator<std::pair<const PredicateInstance, Predicate> >, std::__detail::_Select1st, std::equal_to<PredicateInstance>, std::hash<PredicateInstance>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true> >::__hashtable_alloc]’
/usr/include/c++/11/bits/hashtable_policy.h:707:42:   required from ‘std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type& std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::operator[](const key_type&) [with _Key = PredicateInstance; _Pair = std::pair<const PredicateInstance, Predicate>; _Alloc = std::allocator<std::pair<const PredicateInstance, Predicate> >; _Equal = std::equal_to<PredicateInstance>; _Hash = std::hash<PredicateInstance>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::mapped_type = Predicate; std::__detail::_Map_base<_Key, _Pair, _Alloc, std::__detail::_Select1st, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits, true>::key_type = PredicateInstance]’
/usr/include/c++/11/bits/unordered_map.h:980:20:   required from ‘std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type& std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::operator[](const key_type&) [with _Key = PredicateInstance; _Tp = Predicate; _Hash = std::hash<PredicateInstance>; _Pred = std::equal_to<PredicateInstance>; _Alloc = std::allocator<std::pair<const PredicateInstance, Predicate> >; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::mapped_type = Predicate; std::unordered_map<_Key, _Tp, _Hash, _Pred, _Alloc>::key_type = PredicateInstance]’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/tree_visitor.h:413:46:   required from here
/usr/include/c++/11/tuple:1824:9: error: no matching function for call to ‘Predicate::Predicate()’
 1824 |         second(std::forward<_Args2>(std::get<_Indexes2>(__tuple2))...)
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/visitable.h:10,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/parser.h:9,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:12:
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:34:5: note: candidate: ‘Predicate::Predicate(std::string, std::vector<std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >)’
   34 |     Predicate(string name, vector<pair<string, vector<Type>>> signature)
      |     ^~~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:34:5: note:   candidate expects 2 arguments, 0 provided
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note: candidate: ‘Predicate::Predicate(const Predicate&)’
   32 | class Predicate {
      |       ^~~~~~~~~
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note:   candidate expects 1 argument, 0 provided
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note: candidate: ‘Predicate::Predicate(Predicate&&)’
/mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/src/myplan/pddl/pddl.h:32:7: note:   candidate expects 1 argument, 0 provided
In file included from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable.h: In instantiation of ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::~_Hashtable() [with _Key = Type; _Value = std::pair<const Type, Type>; _Alloc = std::allocator<std::pair<const Type, Type> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<Type>; _Hash = std::hash<Type>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’:
/usr/include/c++/11/bits/unordered_map.h:102:11:   required from here
/usr/include/c++/11/bits/hashtable.h:1534:5: error: use of deleted function ‘std::__detail::_Hashtable_base<Type, std::pair<const Type, Type>, std::__detail::_Select1st, std::equal_to<Type>, std::hash<Type>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’
 1534 |     }
      |     ^
In file included from /usr/include/c++/11/bits/hashtable.h:35,
                 from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable_policy.h:1561:12: note: ‘std::__detail::_Hashtable_base<Type, std::pair<const Type, Type>, std::__detail::_Select1st, std::equal_to<Type>, std::hash<Type>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’ is implicitly deleted because the default definition would be ill-formed:
 1561 |     struct _Hashtable_base
      |            ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1561:12: error: use of deleted function ‘std::__detail::_Hash_code_base<Type, std::pair<const Type, Type>, std::__detail::_Select1st, std::hash<Type>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’
/usr/include/c++/11/bits/hashtable_policy.h:1188:12: note: ‘std::__detail::_Hash_code_base<Type, std::pair<const Type, Type>, std::__detail::_Select1st, std::hash<Type>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’ is implicitly deleted because the default definition would be ill-formed:
 1188 |     struct _Hash_code_base
      |            ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1188:12: error: use of deleted function ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<Type>, true>::~_Hashtable_ebo_helper()’
/usr/include/c++/11/bits/hashtable_policy.h:1124:12: note: ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<Type>, true>::~_Hashtable_ebo_helper()’ is implicitly deleted because the default definition would be ill-formed:
 1124 |     struct _Hashtable_ebo_helper<_Nm, _Tp, true>
      |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1124:12: error: use of deleted function ‘std::hash<Type>::~hash()’
In file included from /usr/include/c++/11/bits/unique_ptr.h:39,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/functional_hash.h:102:12: note: ‘std::hash<Type>::~hash()’ is implicitly deleted because the default definition would be ill-formed:
  102 |     struct hash : __hash_enum<_Tp>
      |            ^~~~
/usr/include/c++/11/bits/functional_hash.h:102:12: error: ‘std::__hash_enum<_Tp, <anonymous> >::~__hash_enum() [with _Tp = Type; bool <anonymous> = false]’ is private within this context
/usr/include/c++/11/bits/functional_hash.h:84:7: note: declared private here
   84 |       ~__hash_enum();
      |       ^
In file included from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable.h: In instantiation of ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::~_Hashtable() [with _Key = PredicateVar; _Value = std::pair<const PredicateVar, Predicate>; _Alloc = std::allocator<std::pair<const PredicateVar, Predicate> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<PredicateVar>; _Hash = std::hash<PredicateVar>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’:
/usr/include/c++/11/bits/unordered_map.h:102:11:   required from here
/usr/include/c++/11/bits/hashtable.h:1534:5: error: use of deleted function ‘std::__detail::_Hashtable_base<PredicateVar, std::pair<const PredicateVar, Predicate>, std::__detail::_Select1st, std::equal_to<PredicateVar>, std::hash<PredicateVar>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’
 1534 |     }
      |     ^
In file included from /usr/include/c++/11/bits/hashtable.h:35,
                 from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable_policy.h:1561:12: note: ‘std::__detail::_Hashtable_base<PredicateVar, std::pair<const PredicateVar, Predicate>, std::__detail::_Select1st, std::equal_to<PredicateVar>, std::hash<PredicateVar>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’ is implicitly deleted because the default definition would be ill-formed:
 1561 |     struct _Hashtable_base
      |            ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1561:12: error: use of deleted function ‘std::__detail::_Hash_code_base<PredicateVar, std::pair<const PredicateVar, Predicate>, std::__detail::_Select1st, std::hash<PredicateVar>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’
/usr/include/c++/11/bits/hashtable_policy.h:1188:12: note: ‘std::__detail::_Hash_code_base<PredicateVar, std::pair<const PredicateVar, Predicate>, std::__detail::_Select1st, std::hash<PredicateVar>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’ is implicitly deleted because the default definition would be ill-formed:
 1188 |     struct _Hash_code_base
      |            ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1188:12: error: use of deleted function ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<PredicateVar>, true>::~_Hashtable_ebo_helper()’
/usr/include/c++/11/bits/hashtable_policy.h:1124:12: note: ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<PredicateVar>, true>::~_Hashtable_ebo_helper()’ is implicitly deleted because the default definition would be ill-formed:
 1124 |     struct _Hashtable_ebo_helper<_Nm, _Tp, true>
      |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1124:12: error: use of deleted function ‘std::hash<PredicateVar>::~hash()’
In file included from /usr/include/c++/11/bits/unique_ptr.h:39,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/functional_hash.h:102:12: note: ‘std::hash<PredicateVar>::~hash()’ is implicitly deleted because the default definition would be ill-formed:
  102 |     struct hash : __hash_enum<_Tp>
      |            ^~~~
/usr/include/c++/11/bits/functional_hash.h:102:12: error: ‘std::__hash_enum<_Tp, <anonymous> >::~__hash_enum() [with _Tp = PredicateVar; bool <anonymous> = false]’ is private within this context
/usr/include/c++/11/bits/functional_hash.h:84:7: note: declared private here
   84 |       ~__hash_enum();
      |       ^
In file included from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable.h: In instantiation of ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::~_Hashtable() [with _Key = Variable; _Value = std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >; _Alloc = std::allocator<std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > > >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<Variable>; _Hash = std::hash<Variable>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’:
/usr/include/c++/11/bits/unordered_map.h:102:11:   required from here
/usr/include/c++/11/bits/hashtable.h:1534:5: error: use of deleted function ‘std::__detail::_Hashtable_base<Variable, std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >, std::__detail::_Select1st, std::equal_to<Variable>, std::hash<Variable>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’
 1534 |     }
      |     ^
In file included from /usr/include/c++/11/bits/hashtable.h:35,
                 from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable_policy.h:1561:12: note: ‘std::__detail::_Hashtable_base<Variable, std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >, std::__detail::_Select1st, std::equal_to<Variable>, std::hash<Variable>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’ is implicitly deleted because the default definition would be ill-formed:
 1561 |     struct _Hashtable_base
      |            ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1561:12: error: use of deleted function ‘std::__detail::_Hash_code_base<Variable, std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >, std::__detail::_Select1st, std::hash<Variable>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’
/usr/include/c++/11/bits/hashtable_policy.h:1188:12: note: ‘std::__detail::_Hash_code_base<Variable, std::pair<const Variable, std::pair<std::__cxx11::basic_string<char>, std::vector<Type> > >, std::__detail::_Select1st, std::hash<Variable>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’ is implicitly deleted because the default definition would be ill-formed:
 1188 |     struct _Hash_code_base
      |            ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1188:12: error: use of deleted function ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<Variable>, true>::~_Hashtable_ebo_helper()’
/usr/include/c++/11/bits/hashtable_policy.h:1124:12: note: ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<Variable>, true>::~_Hashtable_ebo_helper()’ is implicitly deleted because the default definition would be ill-formed:
 1124 |     struct _Hashtable_ebo_helper<_Nm, _Tp, true>
      |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1124:12: error: use of deleted function ‘std::hash<Variable>::~hash()’
In file included from /usr/include/c++/11/bits/unique_ptr.h:39,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/functional_hash.h:102:12: note: ‘std::hash<Variable>::~hash()’ is implicitly deleted because the default definition would be ill-formed:
  102 |     struct hash : __hash_enum<_Tp>
      |            ^~~~
/usr/include/c++/11/bits/functional_hash.h:102:12: error: ‘std::__hash_enum<_Tp, <anonymous> >::~__hash_enum() [with _Tp = Variable; bool <anonymous> = false]’ is private within this context
/usr/include/c++/11/bits/functional_hash.h:84:7: note: declared private here
   84 |       ~__hash_enum();
      |       ^
In file included from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable.h: In instantiation of ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::~_Hashtable() [with _Key = PreconditionStmt; _Value = std::pair<const PreconditionStmt, std::vector<Predicate> >; _Alloc = std::allocator<std::pair<const PreconditionStmt, std::vector<Predicate> > >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<PreconditionStmt>; _Hash = std::hash<PreconditionStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’:
/usr/include/c++/11/bits/unordered_map.h:102:11:   required from here
/usr/include/c++/11/bits/hashtable.h:1534:5: error: use of deleted function ‘std::__detail::_Hashtable_base<PreconditionStmt, std::pair<const PreconditionStmt, std::vector<Predicate> >, std::__detail::_Select1st, std::equal_to<PreconditionStmt>, std::hash<PreconditionStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’
 1534 |     }
      |     ^
In file included from /usr/include/c++/11/bits/hashtable.h:35,
                 from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable_policy.h:1561:12: note: ‘std::__detail::_Hashtable_base<PreconditionStmt, std::pair<const PreconditionStmt, std::vector<Predicate> >, std::__detail::_Select1st, std::equal_to<PreconditionStmt>, std::hash<PreconditionStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’ is implicitly deleted because the default definition would be ill-formed:
 1561 |     struct _Hashtable_base
      |            ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1561:12: error: use of deleted function ‘std::__detail::_Hash_code_base<PreconditionStmt, std::pair<const PreconditionStmt, std::vector<Predicate> >, std::__detail::_Select1st, std::hash<PreconditionStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’
/usr/include/c++/11/bits/hashtable_policy.h:1188:12: note: ‘std::__detail::_Hash_code_base<PreconditionStmt, std::pair<const PreconditionStmt, std::vector<Predicate> >, std::__detail::_Select1st, std::hash<PreconditionStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’ is implicitly deleted because the default definition would be ill-formed:
 1188 |     struct _Hash_code_base
      |            ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1188:12: error: use of deleted function ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<PreconditionStmt>, true>::~_Hashtable_ebo_helper()’
/usr/include/c++/11/bits/hashtable_policy.h:1124:12: note: ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<PreconditionStmt>, true>::~_Hashtable_ebo_helper()’ is implicitly deleted because the default definition would be ill-formed:
 1124 |     struct _Hashtable_ebo_helper<_Nm, _Tp, true>
      |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1124:12: error: use of deleted function ‘std::hash<PreconditionStmt>::~hash()’
In file included from /usr/include/c++/11/bits/unique_ptr.h:39,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/functional_hash.h:102:12: note: ‘std::hash<PreconditionStmt>::~hash()’ is implicitly deleted because the default definition would be ill-formed:
  102 |     struct hash : __hash_enum<_Tp>
      |            ^~~~
/usr/include/c++/11/bits/functional_hash.h:102:12: error: ‘std::__hash_enum<_Tp, <anonymous> >::~__hash_enum() [with _Tp = PreconditionStmt; bool <anonymous> = false]’ is private within this context
/usr/include/c++/11/bits/functional_hash.h:84:7: note: declared private here
   84 |       ~__hash_enum();
      |       ^
In file included from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable.h: In instantiation of ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::~_Hashtable() [with _Key = EffectStmt; _Value = std::pair<const EffectStmt, Effect>; _Alloc = std::allocator<std::pair<const EffectStmt, Effect> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<EffectStmt>; _Hash = std::hash<EffectStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’:
/usr/include/c++/11/bits/unordered_map.h:102:11:   required from here
/usr/include/c++/11/bits/hashtable.h:1534:5: error: use of deleted function ‘std::__detail::_Hashtable_base<EffectStmt, std::pair<const EffectStmt, Effect>, std::__detail::_Select1st, std::equal_to<EffectStmt>, std::hash<EffectStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’
 1534 |     }
      |     ^
In file included from /usr/include/c++/11/bits/hashtable.h:35,
                 from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable_policy.h:1561:12: note: ‘std::__detail::_Hashtable_base<EffectStmt, std::pair<const EffectStmt, Effect>, std::__detail::_Select1st, std::equal_to<EffectStmt>, std::hash<EffectStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’ is implicitly deleted because the default definition would be ill-formed:
 1561 |     struct _Hashtable_base
      |            ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1561:12: error: use of deleted function ‘std::__detail::_Hash_code_base<EffectStmt, std::pair<const EffectStmt, Effect>, std::__detail::_Select1st, std::hash<EffectStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’
/usr/include/c++/11/bits/hashtable_policy.h:1188:12: note: ‘std::__detail::_Hash_code_base<EffectStmt, std::pair<const EffectStmt, Effect>, std::__detail::_Select1st, std::hash<EffectStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’ is implicitly deleted because the default definition would be ill-formed:
 1188 |     struct _Hash_code_base
      |            ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1188:12: error: use of deleted function ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<EffectStmt>, true>::~_Hashtable_ebo_helper()’
/usr/include/c++/11/bits/hashtable_policy.h:1124:12: note: ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<EffectStmt>, true>::~_Hashtable_ebo_helper()’ is implicitly deleted because the default definition would be ill-formed:
 1124 |     struct _Hashtable_ebo_helper<_Nm, _Tp, true>
      |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1124:12: error: use of deleted function ‘std::hash<EffectStmt>::~hash()’
In file included from /usr/include/c++/11/bits/unique_ptr.h:39,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/functional_hash.h:102:12: note: ‘std::hash<EffectStmt>::~hash()’ is implicitly deleted because the default definition would be ill-formed:
  102 |     struct hash : __hash_enum<_Tp>
      |            ^~~~
/usr/include/c++/11/bits/functional_hash.h:102:12: error: ‘std::__hash_enum<_Tp, <anonymous> >::~__hash_enum() [with _Tp = EffectStmt; bool <anonymous> = false]’ is private within this context
/usr/include/c++/11/bits/functional_hash.h:84:7: note: declared private here
   84 |       ~__hash_enum();
      |       ^
In file included from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable.h: In instantiation of ‘std::_Hashtable<_Key2, _Value2, _ValueAlloc, _ExtractKey, _Equal, _Hash, _RangeHash, _Unused, _RehashPolicy, _Traits>::~_Hashtable() [with _Key = ActionStmt; _Value = std::pair<const ActionStmt, Action>; _Alloc = std::allocator<std::pair<const ActionStmt, Action> >; _ExtractKey = std::__detail::_Select1st; _Equal = std::equal_to<ActionStmt>; _Hash = std::hash<ActionStmt>; _RangeHash = std::__detail::_Mod_range_hashing; _Unused = std::__detail::_Default_ranged_hash; _RehashPolicy = std::__detail::_Prime_rehash_policy; _Traits = std::__detail::_Hashtable_traits<true, false, true>]’:
/usr/include/c++/11/bits/unordered_map.h:102:11:   required from here
/usr/include/c++/11/bits/hashtable.h:1534:5: error: use of deleted function ‘std::__detail::_Hashtable_base<ActionStmt, std::pair<const ActionStmt, Action>, std::__detail::_Select1st, std::equal_to<ActionStmt>, std::hash<ActionStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’
 1534 |     }
      |     ^
In file included from /usr/include/c++/11/bits/hashtable.h:35,
                 from /usr/include/c++/11/unordered_map:46,
                 from /usr/include/c++/11/functional:61,
                 from /usr/include/gtest/gtest-printers.h:103,
                 from /usr/include/gtest/gtest-matchers.h:44,
                 from /usr/include/gtest/internal/gtest-death-test-internal.h:39,
                 from /usr/include/gtest/gtest-death-test.h:41,
                 from /usr/include/gtest/gtest.h:64,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/hashtable_policy.h:1561:12: note: ‘std::__detail::_Hashtable_base<ActionStmt, std::pair<const ActionStmt, Action>, std::__detail::_Select1st, std::equal_to<ActionStmt>, std::hash<ActionStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<true, false, true> >::~_Hashtable_base()’ is implicitly deleted because the default definition would be ill-formed:
 1561 |     struct _Hashtable_base
      |            ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1561:12: error: use of deleted function ‘std::__detail::_Hash_code_base<ActionStmt, std::pair<const ActionStmt, Action>, std::__detail::_Select1st, std::hash<ActionStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’
/usr/include/c++/11/bits/hashtable_policy.h:1188:12: note: ‘std::__detail::_Hash_code_base<ActionStmt, std::pair<const ActionStmt, Action>, std::__detail::_Select1st, std::hash<ActionStmt>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, true>::~_Hash_code_base()’ is implicitly deleted because the default definition would be ill-formed:
 1188 |     struct _Hash_code_base
      |            ^~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1188:12: error: use of deleted function ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<ActionStmt>, true>::~_Hashtable_ebo_helper()’
/usr/include/c++/11/bits/hashtable_policy.h:1124:12: note: ‘std::__detail::_Hashtable_ebo_helper<1, std::hash<ActionStmt>, true>::~_Hashtable_ebo_helper()’ is implicitly deleted because the default definition would be ill-formed:
 1124 |     struct _Hashtable_ebo_helper<_Nm, _Tp, true>
      |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/c++/11/bits/hashtable_policy.h:1124:12: error: use of deleted function ‘std::hash<ActionStmt>::~hash()’
In file included from /usr/include/c++/11/bits/unique_ptr.h:39,
                 from /usr/include/c++/11/memory:76,
                 from /usr/include/gtest/gtest.h:57,
                 from /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/test/test_parser_pddl_complex.cpp:1:
/usr/include/c++/11/bits/functional_hash.h:102:12: note: ‘std::hash<ActionStmt>::~hash()’ is implicitly deleted because the default definition would be ill-formed:
  102 |     struct hash : __hash_enum<_Tp>
      |            ^~~~
/usr/include/c++/11/bits/functional_hash.h:102:12: error: ‘std::__hash_enum<_Tp, <anonymous> >::~__hash_enum() [with _Tp = ActionStmt; bool <anonymous> = false]’ is private within this context
/usr/include/c++/11/bits/functional_hash.h:84:7: note: declared private here
   84 |       ~__hash_enum();
      |       ^
gmake[2]: *** [test/CMakeFiles/myplan-test.dir/build.make:90: test/CMakeFiles/myplan-test.dir/test_parser_pddl_complex.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:134: test/CMakeFiles/myplan-test.dir/all] Error 2
gmake: *** [Makefile:101: all] Error 2
Unable to find executable: myplan-test_NOT_BUILT
Errors while running CTest
Output from these tests are in: /mnt/c/Users/kanka/Desktop/Git_Public/MyPlan/build/Testing/Temporary/LastTest.log
Use "--rerun-failed --output-on-failure" to re-run the failed cases verbosely.
