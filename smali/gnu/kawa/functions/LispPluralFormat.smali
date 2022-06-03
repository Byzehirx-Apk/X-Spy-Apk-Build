.class Lgnu/kawa/functions/LispPluralFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field backup:Z

.field y:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispPluralFormat;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static getInstance(ZZ)Lgnu/kawa/functions/LispPluralFormat;
    .locals 6

    .prologue
    .line 571
    move v0, p0

    .local v0, "backup":Z
    move v1, p1

    .local v1, "y":Z
    new-instance v3, Lgnu/kawa/functions/LispPluralFormat;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lgnu/kawa/functions/LispPluralFormat;-><init>()V

    move-object v2, v3

    .line 572
    .local v2, "fmt":Lgnu/kawa/functions/LispPluralFormat;
    move-object v3, v2

    move v4, v0

    iput-boolean v4, v3, Lgnu/kawa/functions/LispPluralFormat;->backup:Z

    .line 573
    move-object v3, v2

    move v4, v1

    iput-boolean v4, v3, Lgnu/kawa/functions/LispPluralFormat;->y:Z

    .line 574
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "backup":Z
    return-object v0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispPluralFormat;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move v2, p2

    .local v2, "start":I
    move-object v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v7, v0

    iget-boolean v7, v7, Lgnu/kawa/functions/LispPluralFormat;->backup:Z

    if-eqz v7, :cond_0

    .line 582
    add-int/lit8 v2, v2, -0x1

    .line 583
    :cond_0
    move-object v7, v1

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v7, v7, v8

    move-object v5, v7

    .line 584
    .local v5, "arg":Ljava/lang/Object;
    move-object v7, v5

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v8

    if-eq v7, v8, :cond_2

    const/4 v7, 0x1

    :goto_0
    move v6, v7

    .line 585
    .local v6, "plural":Z
    move-object v7, v0

    iget-boolean v7, v7, Lgnu/kawa/functions/LispPluralFormat;->y:Z

    if-eqz v7, :cond_4

    .line 586
    move-object v7, v3

    move v8, v6

    if-eqz v8, :cond_3

    const-string/jumbo v8, "ies"

    :goto_1
    invoke-static {v7, v8}, Lgnu/kawa/functions/LispPluralFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    .line 589
    :cond_1
    :goto_2
    move v7, v2

    move v0, v7

    .end local v0    # "this":Lgnu/kawa/functions/LispPluralFormat;
    return v0

    .line 584
    .end local v6    # "plural":Z
    .restart local v0    # "this":Lgnu/kawa/functions/LispPluralFormat;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 586
    .restart local v6    # "plural":Z
    :cond_3
    const-string/jumbo v8, "y"

    goto :goto_1

    .line 587
    :cond_4
    move v7, v6

    if-eqz v7, :cond_1

    .line 588
    move-object v7, v3

    const/16 v8, 0x73

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2
.end method
