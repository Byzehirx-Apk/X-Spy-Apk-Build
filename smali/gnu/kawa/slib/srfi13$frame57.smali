.class public Lgnu/kawa/slib/srfi13$frame57;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringHashCi$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame57"
.end annotation


# instance fields
.field bound:Ljava/lang/Object;

.field final lambda$Fn136:Lgnu/expr/ModuleMethod;

.field final lambda$Fn137:Lgnu/expr/ModuleMethod;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 9

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0x72

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame57;->lambda$Fn136:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0x73

    const/4 v6, 0x0

    const/16 v7, 0x2002

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame57;->lambda$Fn137:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method static lambda138(Ljava/lang/Object;)I
    .locals 10

    .prologue
    .line 922
    move-object v0, p0

    .local v0, "c":Ljava/lang/Object;
    move-object v2, v0

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v1, v3

    :try_start_0
    check-cast v2, Lgnu/text/Char;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2}, Lkawa/lib/rnrs/unicode;->charDowncase(Lgnu/text/Char;)Lgnu/text/Char;

    move-result-object v2

    invoke-static {v2}, Lkawa/lib/characters;->char$To$Integer(Lgnu/text/Char;)I

    move-result v2

    move v0, v2

    .end local v0    # "c":Ljava/lang/Object;
    return v0

    .restart local v0    # "c":Ljava/lang/Object;
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v9, v3

    move-object v2, v9

    move-object v3, v8

    move-object v4, v9

    move-object v8, v3

    move-object v9, v4

    move-object v3, v9

    move-object v4, v8

    const-string/jumbo v5, "char-downcase"

    const/4 v6, 0x1

    move-object v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v3, 0x72

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi13$frame57;->lambda136()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v5, 0x73

    if-ne v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/slib/srfi13$frame57;->lambda137(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method lambda136()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 921
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame57;
    sget-object v1, Lgnu/kawa/slib/srfi13;->string$Mnhash$Mnci:Lgnu/expr/ModuleMethod;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/srfi13$frame57;->s:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/srfi13;->loc$rest:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v3}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-static {v1, v2, v3}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame57;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/srfi13$frame57;
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const/16 v4, 0x399

    const/16 v5, 0x3a

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v1
.end method

.method lambda137(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 922
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame57;
    move-object v1, p1

    .local v1, "start":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "end":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi13$frame57;->s:Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/srfi13;->lambda$Fn138:Lgnu/expr/ModuleMethod;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/srfi13$frame57;->bound:Ljava/lang/Object;

    move-object v6, v1

    move-object v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Lgnu/kawa/slib/srfi13;->$PcStringHash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame57;
    return-object v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v4, 0x72

    if-ne v3, v4, :cond_0

    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lgnu/mapping/CallContext;->pc:I

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v6, 0x73

    if-ne v5, v6, :cond_0

    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method