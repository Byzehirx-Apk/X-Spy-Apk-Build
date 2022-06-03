.class Lgnu/expr/ModuleContext$ClassToInstanceMap;
.super Lgnu/kawa/util/AbstractWeakHashTable;
.source "ModuleContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/expr/ModuleContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassToInstanceMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/kawa/util/AbstractWeakHashTable",
        "<",
        "Ljava/lang/Class;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleContext$ClassToInstanceMap;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/util/AbstractWeakHashTable;-><init>()V

    return-void
.end method


# virtual methods
.method protected getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 3

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleContext$ClassToInstanceMap;
    move-object v1, p1

    .local v1, "instance":Ljava/lang/Object;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/ModuleContext$ClassToInstanceMap;
    return-object v0
.end method

.method protected bridge synthetic getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleContext$ClassToInstanceMap;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/ModuleContext$ClassToInstanceMap;->getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/ModuleContext$ClassToInstanceMap;
    return-object v0
.end method

.method protected matches(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 5

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleContext$ClassToInstanceMap;
    move-object v1, p1

    .local v1, "oldValue":Ljava/lang/Class;
    move-object v2, p2

    .local v2, "newValue":Ljava/lang/Class;
    move-object v3, v1

    move-object v4, v2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/expr/ModuleContext$ClassToInstanceMap;
    return v0

    .restart local v0    # "this":Lgnu/expr/ModuleContext$ClassToInstanceMap;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
