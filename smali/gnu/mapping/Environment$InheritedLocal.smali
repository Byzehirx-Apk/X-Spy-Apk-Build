.class Lgnu/mapping/Environment$InheritedLocal;
.super Ljava/lang/InheritableThreadLocal;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/mapping/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InheritedLocal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/InheritableThreadLocal",
        "<",
        "Lgnu/mapping/Environment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment$InheritedLocal;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected childValue(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;
    .locals 7

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment$InheritedLocal;
    move-object v1, p1

    .local v1, "parentValue":Lgnu/mapping/Environment;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 490
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v3

    move-object v1, v3

    .line 491
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/Environment;->cloneForThread()Lgnu/mapping/SimpleEnvironment;

    move-result-object v3

    move-object v2, v3

    .line 492
    .local v2, "env":Lgnu/mapping/SimpleEnvironment;
    move-object v3, v2

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/mapping/SimpleEnvironment;->flags:I

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Lgnu/mapping/SimpleEnvironment;->flags:I

    .line 493
    move-object v3, v2

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/mapping/SimpleEnvironment;->flags:I

    const/16 v5, -0x11

    and-int/lit8 v4, v4, -0x11

    iput v4, v3, Lgnu/mapping/SimpleEnvironment;->flags:I

    .line 494
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/Environment$InheritedLocal;
    return-object v0
.end method

.method protected bridge synthetic childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Environment$InheritedLocal;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/mapping/Environment;

    invoke-virtual {v2, v3}, Lgnu/mapping/Environment$InheritedLocal;->childValue(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/Environment$InheritedLocal;
    return-object v0
.end method
