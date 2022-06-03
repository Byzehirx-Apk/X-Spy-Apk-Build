.class Lgnu/kawa/functions/LispNewlineFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# static fields
.field static final line_separator:Ljava/lang/String;


# instance fields
.field count:I

.field kind:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 664
    const-string/jumbo v0, "line.separator"

    const-string/jumbo v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/LispNewlineFormat;->line_separator:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 662
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispNewlineFormat;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static getInstance(II)Lgnu/kawa/functions/LispNewlineFormat;
    .locals 6

    .prologue
    .line 676
    move v0, p0

    .local v0, "count":I
    move v1, p1

    .local v1, "kind":I
    new-instance v3, Lgnu/kawa/functions/LispNewlineFormat;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lgnu/kawa/functions/LispNewlineFormat;-><init>()V

    move-object v2, v3

    .line 677
    .local v2, "fmt":Lgnu/kawa/functions/LispNewlineFormat;
    move-object v3, v2

    move v4, v0

    iput v4, v3, Lgnu/kawa/functions/LispNewlineFormat;->count:I

    .line 678
    move-object v3, v2

    move v4, v1

    iput v4, v3, Lgnu/kawa/functions/LispNewlineFormat;->kind:I

    .line 679
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "count":I
    return-object v0
.end method

.method public static printNewline(ILjava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    move v0, p0

    .local v0, "kind":I
    move-object v1, p1

    .local v1, "dst":Ljava/io/Writer;
    move-object v2, v1

    instance-of v2, v2, Lgnu/mapping/OutPort;

    if-eqz v2, :cond_0

    move v2, v0

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_0

    .line 697
    move-object v2, v1

    check-cast v2, Lgnu/mapping/OutPort;

    move v3, v0

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->writeBreak(I)V

    .line 703
    :goto_0
    return-void

    .line 698
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/io/PrintWriter;

    if-eqz v2, :cond_1

    .line 700
    move-object v2, v1

    check-cast v2, Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    .line 702
    :cond_1
    move-object v2, v1

    sget-object v3, Lgnu/kawa/functions/LispNewlineFormat;->line_separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispNewlineFormat;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move v2, p2

    .local v2, "start":I
    move-object v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v6, v0

    iget v6, v6, Lgnu/kawa/functions/LispNewlineFormat;->count:I

    const/4 v7, 0x1

    move-object v8, v1

    move v9, v2

    invoke-static {v6, v7, v8, v9}, Lgnu/kawa/functions/LispNewlineFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v6

    move v5, v6

    .line 687
    .local v5, "count":I
    move-object v6, v0

    iget v6, v6, Lgnu/kawa/functions/LispNewlineFormat;->count:I

    const/high16 v7, -0x60000000

    if-ne v6, v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 688
    :cond_0
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move v6, v5

    if-ltz v6, :cond_1

    .line 689
    move-object v6, v0

    iget v6, v6, Lgnu/kawa/functions/LispNewlineFormat;->kind:I

    move-object v7, v3

    invoke-static {v6, v7}, Lgnu/kawa/functions/LispNewlineFormat;->printNewline(ILjava/io/Writer;)V

    goto :goto_0

    .line 690
    :cond_1
    move v6, v2

    move v0, v6

    .end local v0    # "this":Lgnu/kawa/functions/LispNewlineFormat;
    return v0
.end method
