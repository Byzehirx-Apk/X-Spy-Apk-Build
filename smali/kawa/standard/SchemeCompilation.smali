.class public Lkawa/standard/SchemeCompilation;
.super Ljava/lang/Object;
.source "SchemeCompilation.java"


# static fields
.field public static final lambda:Lkawa/lang/Lambda;

.field public static final repl:Lkawa/repl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 10
    new-instance v0, Lkawa/lang/Lambda;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Lkawa/lang/Lambda;-><init>()V

    sput-object v0, Lkawa/standard/SchemeCompilation;->lambda:Lkawa/lang/Lambda;

    .line 14
    new-instance v0, Lkawa/repl;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    invoke-direct {v1, v2}, Lkawa/repl;-><init>(Lgnu/expr/Language;)V

    sput-object v0, Lkawa/standard/SchemeCompilation;->repl:Lkawa/repl;

    .line 15
    sget-object v0, Lkawa/standard/SchemeCompilation;->lambda:Lkawa/lang/Lambda;

    sget-object v1, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    sget-object v2, Lgnu/expr/Special;->rest:Lgnu/expr/Special;

    sget-object v3, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Lambda;->setKeywords(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lkawa/standard/SchemeCompilation;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
