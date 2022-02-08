package com.hyf.aspectj;

/**
 * @author baB_hyf
 * @date 2022/02/08
 */
public abstract aspect AbstractParentAspect extends AspectSupport {

    protected abstract pointcut cacheMethodExecution(Object cachedObject);
}
