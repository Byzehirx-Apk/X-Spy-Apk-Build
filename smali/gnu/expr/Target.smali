.class public abstract Lgnu/expr/Target;
.super Ljava/lang/Object;
.source "Target.java"


# static fields
.field public static final Ignore:Lgnu/expr/Target;

.field public static final pushObject:Lgnu/expr/Target;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    new-instance v0, Lgnu/expr/IgnoreTarget;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lgnu/expr/IgnoreTarget;-><init>()V

    sput-object v0, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    .line 20
    new-instance v0, Lgnu/expr/StackTarget;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-direct {v1, v2}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    sput-object v0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Target;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/Type;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    :goto_0
    move-object v0, v1

    .end local v0    # "type":Lgnu/bytecode/Type;
    return-object v0

    .restart local v0    # "type":Lgnu/bytecode/Type;
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public abstract compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
.end method

.method public abstract getType()Lgnu/bytecode/Type;
.end method
