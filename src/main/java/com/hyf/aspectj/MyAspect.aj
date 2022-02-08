package com.hyf.aspectj;

/**
 * IDEA JavaCompiler 设置为 ajc 编译器
 *
 * @author baB_hyf
 * @date 2022/02/08
 */
public aspect MyAspect extends AbstractParentAspect {

    private pointcut executionOfAnyPublicMethodInAtCacheableType() :
            execution(public * ((@Cacheable *)+).*(..)) && within(@Cacheable *);

    protected pointcut cacheMethodExecution(Object cachedObject) :
            (executionOfAnyPublicMethodInAtCacheableType()) && this(cachedObject);
}
