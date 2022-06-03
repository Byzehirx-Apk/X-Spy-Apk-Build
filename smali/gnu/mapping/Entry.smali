.class Lgnu/mapping/Entry;
.super Ljava/lang/Object;
.source "Table2D.java"


# instance fields
.field chain:Lgnu/mapping/Entry;

.field key1:Ljava/lang/Object;

.field key2:Ljava/lang/Object;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Entry;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey1()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Entry;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 366
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 368
    .end local v0    # "this":Lgnu/mapping/Entry;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/Entry;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0
.end method

.method public getKey2()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Entry;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 375
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 377
    .end local v0    # "this":Lgnu/mapping/Entry;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/Entry;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Entry;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    move-object v2, v0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Entry;
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/Entry;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public matches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Entry;
    move-object v1, p1

    .local v1, "key1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "key2":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/mapping/Entry;->getKey1()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/mapping/Entry;->getKey2()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/mapping/Entry;
    return v0

    .restart local v0    # "this":Lgnu/mapping/Entry;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
