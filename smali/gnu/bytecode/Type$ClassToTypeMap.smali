.class Lgnu/bytecode/Type$ClassToTypeMap;
.super Lgnu/kawa/util/AbstractWeakHashTable;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/bytecode/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassToTypeMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/kawa/util/AbstractWeakHashTable",
        "<",
        "Ljava/lang/Class;",
        "Lgnu/bytecode/Type;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 618
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type$ClassToTypeMap;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/util/AbstractWeakHashTable;-><init>()V

    return-void
.end method


# virtual methods
.method protected getKeyFromValue(Lgnu/bytecode/Type;)Ljava/lang/Class;
    .locals 3

    .prologue
    .line 622
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type$ClassToTypeMap;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v1

    iget-object v2, v2, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/Type$ClassToTypeMap;
    return-object v0
.end method

.method protected bridge synthetic getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 618
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type$ClassToTypeMap;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/bytecode/Type;

    invoke-virtual {v2, v3}, Lgnu/bytecode/Type$ClassToTypeMap;->getKeyFromValue(Lgnu/bytecode/Type;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/Type$ClassToTypeMap;
    return-object v0
.end method

.method protected matches(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 5

    .prologue
    .line 628
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type$ClassToTypeMap;
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

    .end local v0    # "this":Lgnu/bytecode/Type$ClassToTypeMap;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/Type$ClassToTypeMap;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
