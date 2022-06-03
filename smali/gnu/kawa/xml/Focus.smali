.class public final Lgnu/kawa/xml/Focus;
.super Lgnu/lists/TreePosition;
.source "Focus.java"


# static fields
.field public static final TYPE:Lgnu/bytecode/ClassType;

.field static current:Ljava/lang/ThreadLocal;

.field static final getCurrentFocusMethod:Lgnu/bytecode/Method;


# instance fields
.field contextPosition:Lgnu/math/IntNum;

.field public position:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 15
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Focus;->current:Ljava/lang/ThreadLocal;

    .line 47
    const-string/jumbo v0, "gnu.kawa.xml.Focus"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/Focus;->TYPE:Lgnu/bytecode/ClassType;

    .line 48
    sget-object v0, Lgnu/kawa/xml/Focus;->TYPE:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "getCurrent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/Focus;->getCurrentFocusMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Focus;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/TreePosition;-><init>()V

    return-void
.end method

.method public static compileGetCurrent(Lgnu/expr/Compilation;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "comp":Lgnu/expr/Compilation;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    move-object v1, v2

    .line 44
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v1

    sget-object v3, Lgnu/kawa/xml/Focus;->getCurrentFocusMethod:Lgnu/bytecode/Method;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 45
    return-void
.end method

.method public static getCurrent()Lgnu/kawa/xml/Focus;
    .locals 4

    .prologue
    .line 24
    sget-object v1, Lgnu/kawa/xml/Focus;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 25
    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lgnu/kawa/xml/Focus;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lgnu/kawa/xml/Focus;-><init>()V

    move-object v0, v1

    .line 28
    .local v0, "obj":Lgnu/kawa/xml/Focus;
    sget-object v1, Lgnu/kawa/xml/Focus;->current:Ljava/lang/ThreadLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 30
    .end local v0    # "obj":Lgnu/kawa/xml/Focus;
    :cond_0
    move-object v1, v0

    check-cast v1, Lgnu/kawa/xml/Focus;

    move-object v0, v1

    return-object v0
.end method
