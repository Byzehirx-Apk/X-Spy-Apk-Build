.class public abstract Lkawa/lang/Pattern;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Lgnu/text/Printable;


# static fields
.field private static matchArgs:[Lgnu/bytecode/Type;

.field public static final matchPatternMethod:Lgnu/bytecode/Method;

.field public static typePattern:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 35
    const-string/jumbo v0, "kawa.lang.Pattern"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/lang/Pattern;->typePattern:Lgnu/bytecode/ClassType;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x2

    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v3, v1, v2

    sput-object v0, Lkawa/lang/Pattern;->matchArgs:[Lgnu/bytecode/Type;

    .line 38
    sget-object v0, Lkawa/lang/Pattern;->typePattern:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "match"

    sget-object v2, Lkawa/lang/Pattern;->matchArgs:[Lgnu/bytecode/Type;

    sget-object v3, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Pattern;->matchPatternMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Pattern;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
.end method

.method public match(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Pattern;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lkawa/lang/Pattern;->varCount()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 22
    .local v2, "vars":[Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lkawa/lang/Pattern;
    return-object v0

    .restart local v0    # "this":Lkawa/lang/Pattern;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public abstract varCount()I
.end method
