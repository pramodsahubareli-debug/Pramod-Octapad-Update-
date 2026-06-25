.class public final synthetic Lcom/google/firebase/components/ComponentContainer$-CC;
.super Ljava/lang/Object;
.source "ComponentContainer.java"


# direct methods
.method public static $default$get(Lcom/google/firebase/components/ComponentContainer;Lcom/google/firebase/components/Qualified;)Ljava/lang/Object;
    .locals 2
    .param p0, "_this"    # Lcom/google/firebase/components/ComponentContainer;

    .line 44
    .local p1, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    invoke-interface {p0, p1}, Lcom/google/firebase/components/ComponentContainer;->getProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;

    move-result-object v0

    .line 45
    .local v0, "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<TT;>;"
    if-nez v0, :cond_0

    .line 46
    const/4 v1, 0x0

    return-object v1

    .line 48
    :cond_0
    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static $default$get(Lcom/google/firebase/components/ComponentContainer;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lcom/google/firebase/components/ComponentContainer;

    .line 24
    .local p1, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/components/ComponentContainer;->get(Lcom/google/firebase/components/Qualified;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getDeferred(Lcom/google/firebase/components/ComponentContainer;Ljava/lang/Class;)Lcom/google/firebase/inject/Deferred;
    .locals 1
    .param p0, "_this"    # Lcom/google/firebase/components/ComponentContainer;

    .line 32
    .local p1, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/components/ComponentContainer;->getDeferred(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getProvider(Lcom/google/firebase/components/ComponentContainer;Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
    .locals 1
    .param p0, "_this"    # Lcom/google/firebase/components/ComponentContainer;

    .line 28
    .local p1, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/components/ComponentContainer;->getProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public static $default$setOf(Lcom/google/firebase/components/ComponentContainer;Lcom/google/firebase/components/Qualified;)Ljava/util/Set;
    .locals 1
    .param p0, "_this"    # Lcom/google/firebase/components/ComponentContainer;

    .line 56
    .local p1, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    invoke-interface {p0, p1}, Lcom/google/firebase/components/ComponentContainer;->setOfProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static $default$setOf(Lcom/google/firebase/components/ComponentContainer;Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .param p0, "_this"    # Lcom/google/firebase/components/ComponentContainer;

    .line 36
    .local p1, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/components/ComponentContainer;->setOf(Lcom/google/firebase/components/Qualified;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static $default$setOfProvider(Lcom/google/firebase/components/ComponentContainer;Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
    .locals 1
    .param p0, "_this"    # Lcom/google/firebase/components/ComponentContainer;

    .line 40
    .local p1, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/components/ComponentContainer;->setOfProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;

    move-result-object v0

    return-object v0
.end method
