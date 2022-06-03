.class public Lgnu/kawa/xml/NodeCompare;
.super Lgnu/mapping/Procedure2;
.source "NodeCompare.java"


# static fields
.field public static final $Eq:Lgnu/kawa/xml/NodeCompare;

.field public static final $Gr:Lgnu/kawa/xml/NodeCompare;

.field public static final $Ls:Lgnu/kawa/xml/NodeCompare;

.field public static final $Ne:Lgnu/kawa/xml/NodeCompare;

.field static final RESULT_EQU:I = 0x0

.field static final RESULT_GRT:I = 0x1

.field static final RESULT_LSS:I = -0x1

.field static final TRUE_IF_EQU:I = 0x8

.field static final TRUE_IF_GRT:I = 0x10

.field static final TRUE_IF_LSS:I = 0x4


# instance fields
.field flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-string/jumbo v0, "is"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgnu/kawa/xml/NodeCompare;->make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeCompare;->$Eq:Lgnu/kawa/xml/NodeCompare;

    .line 27
    const-string/jumbo v0, "isnot"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lgnu/kawa/xml/NodeCompare;->make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeCompare;->$Ne:Lgnu/kawa/xml/NodeCompare;

    .line 28
    const-string/jumbo v0, ">>"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lgnu/kawa/xml/NodeCompare;->make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeCompare;->$Gr:Lgnu/kawa/xml/NodeCompare;

    .line 29
    const-string/jumbo v0, "<<"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lgnu/kawa/xml/NodeCompare;->make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeCompare;->$Ls:Lgnu/kawa/xml/NodeCompare;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeCompare;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;
    .locals 6

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move v1, p1

    .local v1, "flags":I
    new-instance v3, Lgnu/kawa/xml/NodeCompare;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lgnu/kawa/xml/NodeCompare;-><init>()V

    move-object v2, v3

    .line 34
    .local v2, "proc":Lgnu/kawa/xml/NodeCompare;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/NodeCompare;->setName(Ljava/lang/String;)V

    .line 35
    move-object v3, v2

    move v4, v1

    iput v4, v3, Lgnu/kawa/xml/NodeCompare;->flags:I

    .line 36
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeCompare;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v2

    if-nez v8, :cond_1

    .line 42
    :cond_0
    const/4 v8, 0x0

    move-object v0, v8

    .line 99
    .end local v0    # "this":Lgnu/kawa/xml/NodeCompare;
    :goto_0
    return-object v0

    .line 43
    .restart local v0    # "this":Lgnu/kawa/xml/NodeCompare;
    :cond_1
    move-object v8, v1

    sget-object v9, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v8, v9, :cond_2

    .line 44
    move-object v8, v1

    move-object v0, v8

    goto :goto_0

    .line 45
    :cond_2
    move-object v8, v2

    sget-object v9, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v8, v9, :cond_3

    .line 46
    move-object v8, v2

    move-object v0, v8

    goto :goto_0

    .line 50
    :cond_3
    move-object v8, v1

    instance-of v8, v8, Lgnu/lists/AbstractSequence;

    if-eqz v8, :cond_4

    .line 52
    move-object v8, v1

    check-cast v8, Lgnu/lists/AbstractSequence;

    move-object v3, v8

    .line 53
    .local v3, "seq1":Lgnu/lists/AbstractSequence;
    move-object v8, v3

    invoke-virtual {v8}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v8

    move v5, v8

    .line 68
    .local v5, "ipos1":I
    :goto_1
    move-object v8, v2

    instance-of v8, v8, Lgnu/lists/AbstractSequence;

    if-eqz v8, :cond_5

    .line 70
    move-object v8, v2

    check-cast v8, Lgnu/lists/AbstractSequence;

    move-object v4, v8

    .line 71
    .local v4, "seq2":Lgnu/lists/AbstractSequence;
    move-object v8, v4

    invoke-virtual {v8}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v8

    move v6, v8

    .line 88
    .local v6, "ipos2":I
    :goto_2
    move-object v8, v3

    move-object v9, v4

    if-ne v8, v9, :cond_6

    .line 89
    move-object v8, v3

    move v9, v5

    move v10, v6

    invoke-virtual {v8, v9, v10}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v8

    move v7, v8

    .line 96
    .local v7, "comp":I
    :goto_3
    const/4 v8, 0x1

    const/4 v9, 0x3

    move v10, v7

    add-int/2addr v9, v10

    shl-int/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/xml/NodeCompare;->flags:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_9

    .line 97
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v8

    goto :goto_0

    .line 59
    .end local v3    # "seq1":Lgnu/lists/AbstractSequence;
    .end local v4    # "seq2":Lgnu/lists/AbstractSequence;
    .end local v5    # "ipos1":I
    .end local v6    # "ipos2":I
    .end local v7    # "comp":I
    :cond_4
    move-object v8, v1

    :try_start_0
    check-cast v8, Lgnu/lists/SeqPosition;

    move-object v7, v8

    .line 60
    .local v7, "spos":Lgnu/lists/SeqPosition;
    move-object v8, v7

    iget-object v8, v8, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v3, v8

    .line 61
    .restart local v3    # "seq1":Lgnu/lists/AbstractSequence;
    move-object v8, v7

    invoke-virtual {v8}, Lgnu/lists/SeqPosition;->getPos()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    move v5, v8

    .line 66
    .restart local v5    # "ipos1":I
    goto :goto_1

    .line 63
    .end local v3    # "seq1":Lgnu/lists/AbstractSequence;
    .end local v5    # "ipos1":I
    .end local v7    # "spos":Lgnu/lists/SeqPosition;
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 65
    .local v7, "ex":Ljava/lang/ClassCastException;
    move-object v8, v7

    move-object v9, v0

    const/4 v10, 0x1

    move-object v11, v1

    invoke-static {v8, v9, v10, v11}, Lgnu/mapping/WrongType;->make(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;ILjava/lang/Object;)Lgnu/mapping/WrongType;

    move-result-object v8

    throw v8

    .line 77
    .end local v7    # "ex":Ljava/lang/ClassCastException;
    .restart local v3    # "seq1":Lgnu/lists/AbstractSequence;
    .restart local v5    # "ipos1":I
    :cond_5
    move-object v8, v2

    :try_start_1
    check-cast v8, Lgnu/lists/SeqPosition;

    move-object v7, v8

    .line 78
    .local v7, "spos":Lgnu/lists/SeqPosition;
    move-object v8, v7

    iget-object v8, v8, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v4, v8

    .line 79
    .restart local v4    # "seq2":Lgnu/lists/AbstractSequence;
    move-object v8, v7

    invoke-virtual {v8}, Lgnu/lists/SeqPosition;->getPos()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    move v6, v8

    .line 84
    .restart local v6    # "ipos2":I
    goto :goto_2

    .line 81
    .end local v4    # "seq2":Lgnu/lists/AbstractSequence;
    .end local v6    # "ipos2":I
    .end local v7    # "spos":Lgnu/lists/SeqPosition;
    :catch_1
    move-exception v8

    move-object v7, v8

    .line 83
    .local v7, "ex":Ljava/lang/ClassCastException;
    move-object v8, v7

    move-object v9, v0

    const/4 v10, 0x2

    move-object v11, v2

    invoke-static {v8, v9, v10, v11}, Lgnu/mapping/WrongType;->make(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;ILjava/lang/Object;)Lgnu/mapping/WrongType;

    move-result-object v8

    throw v8

    .line 90
    .end local v7    # "ex":Ljava/lang/ClassCastException;
    .restart local v4    # "seq2":Lgnu/lists/AbstractSequence;
    .restart local v6    # "ipos2":I
    :cond_6
    move-object v8, v0

    sget-object v9, Lgnu/kawa/xml/NodeCompare;->$Eq:Lgnu/kawa/xml/NodeCompare;

    if-ne v8, v9, :cond_7

    .line 91
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v8

    goto/16 :goto_0

    .line 92
    :cond_7
    move-object v8, v0

    sget-object v9, Lgnu/kawa/xml/NodeCompare;->$Ne:Lgnu/kawa/xml/NodeCompare;

    if-ne v8, v9, :cond_8

    .line 93
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v8

    goto/16 :goto_0

    .line 95
    :cond_8
    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v8, v9}, Lgnu/lists/AbstractSequence;->stableCompare(Lgnu/lists/AbstractSequence;)I

    move-result v8

    move v7, v8

    .local v7, "comp":I
    goto :goto_3

    .line 99
    :cond_9
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v8

    goto/16 :goto_0
.end method
