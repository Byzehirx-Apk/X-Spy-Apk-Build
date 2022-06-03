.class public Lgnu/kawa/slib/printf$frame8;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf;->stdio$ClRoundString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame8"
.end annotation


# instance fields
.field str:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda17dig(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf$frame8;
    move-object v1, p1

    .local v1, "i":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v3, v6

    :try_start_0
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    invoke-static {v4, v5}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    move v2, v4

    .line 156
    .local v2, "c":C
    move v4, v2

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v4}, Lkawa/lib/rnrs/unicode;->isCharNumeric(Lgnu/text/Char;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    move v7, v2

    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4}, Lkawa/lib/strings;->$make$string$([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lkawa/lib/numbers;->string$To$Number(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v4

    .line 156
    :goto_0
    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/printf$frame8;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/printf$frame8;
    :cond_0
    sget-object v4, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    goto :goto_0

    .line 155
    .end local v2    # "c":C
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "string-ref"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method
