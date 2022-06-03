.class Lgnu/expr/ModuleInfo$ClassToInfoMap;
.super Lgnu/kawa/util/AbstractWeakHashTable;
.source "ModuleInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/expr/ModuleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassToInfoMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/kawa/util/AbstractWeakHashTable",
        "<",
        "Ljava/lang/Class;",
        "Lgnu/expr/ModuleInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo$ClassToInfoMap;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/util/AbstractWeakHashTable;-><init>()V

    return-void
.end method


# virtual methods
.method protected getKeyFromValue(Lgnu/expr/ModuleInfo;)Ljava/lang/Class;
    .locals 3

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo$ClassToInfoMap;
    move-object v1, p1

    .local v1, "minfo":Lgnu/expr/ModuleInfo;
    move-object v2, v1

    iget-object v2, v2, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/ModuleInfo$ClassToInfoMap;
    return-object v0
.end method

.method protected bridge synthetic getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo$ClassToInfoMap;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/expr/ModuleInfo;

    invoke-virtual {v2, v3}, Lgnu/expr/ModuleInfo$ClassToInfoMap;->getKeyFromValue(Lgnu/expr/ModuleInfo;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/ModuleInfo$ClassToInfoMap;
    return-object v0
.end method

.method protected matches(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 5

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo$ClassToInfoMap;
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

    .end local v0    # "this":Lgnu/expr/ModuleInfo$ClassToInfoMap;
    return v0

    .restart local v0    # "this":Lgnu/expr/ModuleInfo$ClassToInfoMap;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
