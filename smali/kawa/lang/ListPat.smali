.class public Lkawa/lang/ListPat;
.super Lkawa/lang/Pattern;
.source "ListPat.java"


# instance fields
.field default_value:Ljava/lang/Object;

.field max_length:I

.field min_length:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lkawa/lang/ListPat;
    move v1, p1

    .local v1, "len":I
    move-object v2, v0

    invoke-direct {v2}, Lkawa/lang/Pattern;-><init>()V

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkawa/lang/ListPat;->min_length:I

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkawa/lang/ListPat;->max_length:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lkawa/lang/ListPat;
    move v1, p1

    .local v1, "min":I
    move v2, p2

    .local v2, "max":I
    move-object v3, v0

    invoke-direct {v3}, Lkawa/lang/Pattern;-><init>()V

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lkawa/lang/ListPat;->min_length:I

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lkawa/lang/ListPat;->max_length:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .locals 6

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lkawa/lang/ListPat;
    move v1, p1

    .local v1, "min":I
    move v2, p2

    .local v2, "max":I
    move-object v3, p3

    .local v3, "default_val":Ljava/lang/Object;
    move-object v4, v0

    invoke-direct {v4}, Lkawa/lang/Pattern;-><init>()V

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lkawa/lang/ListPat;->min_length:I

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lkawa/lang/ListPat;->max_length:I

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lkawa/lang/ListPat;->default_value:Ljava/lang/Object;

    return-void
.end method

.method public static match(IILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 11

    .prologue
    .line 24
    move v0, p0

    .local v0, "min":I
    move v1, p1

    .local v1, "max":I
    move-object v2, p2

    .local v2, "default_val":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "obj":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "vars":[Ljava/lang/Object;
    move/from16 v5, p5

    .local v5, "start_vars":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    move v9, v1

    if-ge v8, v9, :cond_1

    .line 26
    move-object v8, v3

    instance-of v8, v8, Lgnu/lists/Pair;

    if-eqz v8, :cond_0

    .line 28
    move-object v8, v3

    check-cast v8, Lgnu/lists/Pair;

    move-object v7, v8

    .line 29
    .local v7, "p":Lgnu/lists/Pair;
    move-object v8, v4

    move v9, v5

    move v10, v6

    add-int/2addr v9, v10

    move-object v10, v7

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    .line 30
    move-object v8, v7

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    .line 24
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 32
    .end local v7    # "p":Lgnu/lists/Pair;
    :cond_0
    move v8, v6

    move v9, v0

    if-ge v8, v9, :cond_1

    .line 33
    const/4 v8, 0x0

    move v0, v8

    .line 41
    .end local v0    # "min":I
    :goto_1
    return v0

    .line 37
    .restart local v0    # "min":I
    :cond_1
    move v8, v6

    move v9, v1

    if-ne v8, v9, :cond_2

    move-object v8, v3

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v8, v9, :cond_2

    .line 38
    const/4 v8, 0x0

    move v0, v8

    goto :goto_1

    .line 39
    :cond_2
    :goto_2
    move v8, v6

    move v9, v1

    if-ge v8, v9, :cond_3

    .line 40
    move-object v8, v4

    move v9, v5

    move v10, v6

    add-int/2addr v9, v10

    move-object v10, v2

    aput-object v10, v8, v9

    .line 39
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 41
    :cond_3
    const/4 v8, 0x1

    move v0, v8

    goto :goto_1
.end method

.method public static match(IILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 11

    .prologue
    .line 55
    move v0, p0

    .local v0, "min":I
    move v1, p1

    .local v1, "max":I
    move-object v2, p2

    .local v2, "default_val":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "obj":Ljava/lang/Object;
    move v5, v1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v4, v5

    .line 56
    .local v4, "vars":[Ljava/lang/Object;
    move v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkawa/lang/ListPat;->match(IILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v4

    :goto_0
    move-object v0, v5

    .end local v0    # "min":I
    return-object v0

    .restart local v0    # "min":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 10

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lkawa/lang/ListPat;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "vars":[Ljava/lang/Object;
    move v3, p3

    .local v3, "start_vars":I
    move-object v4, v0

    iget v4, v4, Lkawa/lang/ListPat;->min_length:I

    move-object v5, v0

    iget v5, v5, Lkawa/lang/ListPat;->max_length:I

    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/ListPat;->default_value:Ljava/lang/Object;

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-static/range {v4 .. v9}, Lkawa/lang/ListPat;->match(IILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lkawa/lang/ListPat;
    return v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lkawa/lang/ListPat;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v1

    const-string/jumbo v3, "#<list-pattern min:"

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 78
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lkawa/lang/ListPat;->min_length:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 79
    move-object v2, v1

    const-string/jumbo v3, " max:"

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 80
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lkawa/lang/ListPat;->max_length:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 81
    move-object v2, v1

    const-string/jumbo v3, " default:"

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 82
    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/ListPat;->default_value:Ljava/lang/Object;

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/text/ReportFormat;->print(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 83
    move-object v2, v1

    const/16 v3, 0x3e

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(I)V

    .line 84
    return-void
.end method

.method public varCount()I
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lkawa/lang/ListPat;
    move-object v1, v0

    iget v1, v1, Lkawa/lang/ListPat;->max_length:I

    move v0, v1

    .end local v0    # "this":Lkawa/lang/ListPat;
    return v0
.end method
