data T a where {T1 :: (a ~ Int) => a -> T a; T3 :: (a ~ Bool) => a -> T a}
e2 = \z -> case z of {(T1 n, y, f) -> f n; (T3 b, y, f) -> f y}
-- should not infer
