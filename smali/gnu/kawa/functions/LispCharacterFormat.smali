.class Lgnu/kawa/functions/LispCharacterFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field charVal:I

.field count:I

.field seenAt:Z

.field seenColon:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispCharacterFormat;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static getInstance(IIZZ)Lgnu/kawa/functions/LispCharacterFormat;
    .locals 8

    .prologue
    .line 608
    move v0, p0

    .local v0, "charVal":I
    move v1, p1

    .local v1, "count":I
    move v2, p2

    .local v2, "seenAt":Z
    move v3, p3

    .local v3, "seenColon":Z
    new-instance v5, Lgnu/kawa/functions/LispCharacterFormat;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lgnu/kawa/functions/LispCharacterFormat;-><init>()V

    move-object v4, v5

    .line 609
    .local v4, "fmt":Lgnu/kawa/functions/LispCharacterFormat;
    move-object v5, v4

    move v6, v1

    iput v6, v5, Lgnu/kawa/functions/LispCharacterFormat;->count:I

    .line 610
    move-object v5, v4

    move v6, v0

    iput v6, v5, Lgnu/kawa/functions/LispCharacterFormat;->charVal:I

    .line 611
    move-object v5, v4

    move v6, v2

    iput-boolean v6, v5, Lgnu/kawa/functions/LispCharacterFormat;->seenAt:Z

    .line 612
    move-object v5, v4

    move v6, v3

    iput-boolean v6, v5, Lgnu/kawa/functions/LispCharacterFormat;->seenColon:Z

    .line 613
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "charVal":I
    return-object v0
.end method

.method public static printChar(IZZLjava/io/Writer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    move v0, p0

    .local v0, "ch":I
    move v1, p1

    .local v1, "seenAt":Z
    move v2, p2

    .local v2, "seenColon":Z
    move-object v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move v4, v1

    if-eqz v4, :cond_0

    .line 635
    move-object v4, v3

    move v5, v0

    invoke-static {v5}, Lgnu/text/Char;->toScmReadableString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/kawa/functions/LispCharacterFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    .line 657
    :goto_0
    return-void

    .line 637
    :cond_0
    move v4, v2

    if-eqz v4, :cond_3

    .line 639
    move v4, v0

    const/16 v5, 0x20

    if-ge v4, v5, :cond_1

    .line 641
    move-object v4, v3

    const/16 v5, 0x5e

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 642
    move-object v4, v3

    move v5, v0

    const/16 v6, 0x40

    add-int/lit8 v5, v5, 0x40

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 644
    :cond_1
    move v4, v0

    const/16 v5, 0x7f

    if-lt v4, v5, :cond_2

    .line 646
    move-object v4, v3

    const-string/jumbo v5, "#\\x"

    invoke-static {v4, v5}, Lgnu/kawa/functions/LispCharacterFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    .line 647
    move-object v4, v3

    move v5, v0

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/kawa/functions/LispCharacterFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0

    .line 650
    :cond_2
    move-object v4, v3

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 655
    :cond_3
    move-object v4, v3

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 620
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispCharacterFormat;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move v2, p2

    .local v2, "start":I
    move-object v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v7, v0

    iget v7, v7, Lgnu/kawa/functions/LispCharacterFormat;->count:I

    const/4 v8, 0x1

    move-object v9, v1

    move v10, v2

    invoke-static {v7, v8, v9, v10}, Lgnu/kawa/functions/LispCharacterFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v7

    move v5, v7

    .line 621
    .local v5, "count":I
    move-object v7, v0

    iget v7, v7, Lgnu/kawa/functions/LispCharacterFormat;->count:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 622
    :cond_0
    move-object v7, v0

    iget v7, v7, Lgnu/kawa/functions/LispCharacterFormat;->charVal:I

    const/16 v8, 0x3f

    move-object v9, v1

    move v10, v2

    invoke-static {v7, v8, v9, v10}, Lgnu/kawa/functions/LispCharacterFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v7

    move v6, v7

    .line 623
    .local v6, "charVal":I
    move-object v7, v0

    iget v7, v7, Lgnu/kawa/functions/LispCharacterFormat;->charVal:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 624
    :cond_1
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move v7, v5

    if-ltz v7, :cond_2

    .line 625
    move v7, v6

    move-object v8, v0

    iget-boolean v8, v8, Lgnu/kawa/functions/LispCharacterFormat;->seenAt:Z

    move-object v9, v0

    iget-boolean v9, v9, Lgnu/kawa/functions/LispCharacterFormat;->seenColon:Z

    move-object v10, v3

    invoke-static {v7, v8, v9, v10}, Lgnu/kawa/functions/LispCharacterFormat;->printChar(IZZLjava/io/Writer;)V

    goto :goto_0

    .line 626
    :cond_2
    move v7, v2

    move v0, v7

    .end local v0    # "this":Lgnu/kawa/functions/LispCharacterFormat;
    return v0
.end method
