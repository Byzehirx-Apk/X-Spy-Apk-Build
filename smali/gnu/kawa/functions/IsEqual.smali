.class public Lgnu/kawa/functions/IsEqual;
.super Lgnu/mapping/Procedure2;
.source "IsEqual.java"


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/IsEqual;
    move-object v1, p1

    .local v1, "language":Lgnu/expr/Language;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/mapping/Procedure2;-><init>()V

    .line 14
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/functions/IsEqual;->language:Lgnu/expr/Language;

    .line 15
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/functions/IsEqual;->setName(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 11

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move-object v8, v0

    move-object v9, v1

    if-ne v8, v9, :cond_0

    .line 30
    const/4 v8, 0x1

    move v0, v8

    .line 129
    .end local v0    # "arg1":Ljava/lang/Object;
    :goto_0
    return v0

    .line 31
    .restart local v0    # "arg1":Ljava/lang/Object;
    :cond_0
    move-object v8, v0

    if-eqz v8, :cond_1

    move-object v8, v1

    if-nez v8, :cond_2

    .line 32
    :cond_1
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 33
    :cond_2
    move-object v8, v0

    instance-of v8, v8, Ljava/lang/Number;

    if-eqz v8, :cond_3

    move-object v8, v1

    instance-of v8, v8, Ljava/lang/Number;

    if-eqz v8, :cond_3

    .line 34
    move-object v8, v0

    check-cast v8, Ljava/lang/Number;

    move-object v9, v1

    check-cast v9, Ljava/lang/Number;

    invoke-static {v8, v9}, Lgnu/kawa/functions/IsEqual;->numberEquals(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v8

    move v0, v8

    goto :goto_0

    .line 38
    :cond_3
    move-object v8, v0

    instance-of v8, v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_8

    .line 40
    move-object v8, v1

    instance-of v8, v8, Ljava/lang/CharSequence;

    if-nez v8, :cond_4

    .line 41
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 42
    :cond_4
    move-object v8, v0

    check-cast v8, Ljava/lang/CharSequence;

    move-object v2, v8

    .line 43
    .local v2, "seq1":Ljava/lang/CharSequence;
    move-object v8, v1

    check-cast v8, Ljava/lang/CharSequence;

    move-object v3, v8

    .line 44
    .local v3, "seq2":Ljava/lang/CharSequence;
    move-object v8, v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move v4, v8

    .line 45
    .local v4, "len1":I
    move-object v8, v3

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move v5, v8

    .line 46
    .local v5, "len2":I
    move v8, v4

    move v9, v5

    if-eq v8, v9, :cond_5

    .line 47
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 48
    :cond_5
    move v8, v4

    move v6, v8

    .local v6, "i":I
    :cond_6
    add-int/lit8 v6, v6, -0x1

    move v8, v6

    if-ltz v8, :cond_7

    .line 50
    move-object v8, v2

    move v9, v6

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move-object v9, v3

    move v10, v6

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_6

    .line 51
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 53
    :cond_7
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 87
    .end local v2    # "seq1":Ljava/lang/CharSequence;
    .end local v3    # "seq2":Ljava/lang/CharSequence;
    .end local v4    # "len1":I
    .end local v5    # "len2":I
    .end local v6    # "i":I
    :cond_8
    move-object v8, v0

    instance-of v8, v8, Lgnu/lists/FVector;

    if-eqz v8, :cond_e

    .line 89
    move-object v8, v1

    instance-of v8, v8, Lgnu/lists/FVector;

    if-nez v8, :cond_9

    .line 90
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 91
    :cond_9
    move-object v8, v0

    check-cast v8, Lgnu/lists/FVector;

    move-object v2, v8

    .line 92
    .local v2, "vec1":Lgnu/lists/FVector;
    move-object v8, v1

    check-cast v8, Lgnu/lists/FVector;

    move-object v3, v8

    .line 93
    .local v3, "vec2":Lgnu/lists/FVector;
    move-object v8, v2

    iget v8, v8, Lgnu/lists/FVector;->size:I

    move v4, v8

    .line 94
    .local v4, "n":I
    move-object v8, v3

    iget-object v8, v8, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    if-eqz v8, :cond_a

    move-object v8, v3

    iget v8, v8, Lgnu/lists/FVector;->size:I

    move v9, v4

    if-eq v8, v9, :cond_b

    .line 95
    :cond_a
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    .line 96
    :cond_b
    move-object v8, v2

    iget-object v8, v8, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    move-object v5, v8

    .line 97
    .local v5, "data1":[Ljava/lang/Object;
    move-object v8, v3

    iget-object v8, v8, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    move-object v6, v8

    .line 98
    .local v6, "data2":[Ljava/lang/Object;
    move v8, v4

    move v7, v8

    .local v7, "i":I
    :cond_c
    add-int/lit8 v7, v7, -0x1

    move v8, v7

    if-ltz v8, :cond_d

    .line 100
    move-object v8, v5

    move v9, v7

    aget-object v8, v8, v9

    move-object v9, v6

    move v10, v7

    aget-object v9, v9, v10

    invoke-static {v8, v9}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 101
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    .line 103
    :cond_d
    const/4 v8, 0x1

    move v0, v8

    goto/16 :goto_0

    .line 105
    .end local v2    # "vec1":Lgnu/lists/FVector;
    .end local v3    # "vec2":Lgnu/lists/FVector;
    .end local v4    # "n":I
    .end local v5    # "data1":[Ljava/lang/Object;
    .end local v6    # "data2":[Ljava/lang/Object;
    .end local v7    # "i":I
    :cond_e
    move-object v8, v0

    instance-of v8, v8, Lgnu/lists/LList;

    if-eqz v8, :cond_17

    .line 107
    move-object v8, v0

    instance-of v8, v8, Lgnu/lists/Pair;

    if-eqz v8, :cond_f

    move-object v8, v1

    instance-of v8, v8, Lgnu/lists/Pair;

    if-nez v8, :cond_10

    .line 108
    :cond_f
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    .line 109
    :cond_10
    move-object v8, v0

    check-cast v8, Lgnu/lists/Pair;

    move-object v2, v8

    .line 110
    .local v2, "pair1":Lgnu/lists/Pair;
    move-object v8, v1

    check-cast v8, Lgnu/lists/Pair;

    move-object v3, v8

    .line 113
    .local v3, "pair2":Lgnu/lists/Pair;
    :goto_1
    move-object v8, v2

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    .line 114
    .local v4, "x1":Ljava/lang/Object;
    move-object v8, v3

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    .line 115
    .local v5, "x2":Ljava/lang/Object;
    move-object v8, v4

    move-object v9, v5

    invoke-static {v8, v9}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 116
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    .line 117
    :cond_11
    move-object v8, v2

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    .line 118
    move-object v8, v3

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    .line 119
    move-object v8, v4

    move-object v9, v5

    if-ne v8, v9, :cond_12

    .line 120
    const/4 v8, 0x1

    move v0, v8

    goto/16 :goto_0

    .line 121
    :cond_12
    move-object v8, v4

    if-eqz v8, :cond_13

    move-object v8, v5

    if-nez v8, :cond_14

    .line 122
    :cond_13
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    .line 123
    :cond_14
    move-object v8, v4

    instance-of v8, v8, Lgnu/lists/Pair;

    if-eqz v8, :cond_15

    move-object v8, v5

    instance-of v8, v8, Lgnu/lists/Pair;

    if-nez v8, :cond_16

    .line 124
    :cond_15
    move-object v8, v4

    move-object v9, v5

    invoke-static {v8, v9}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    move v0, v8

    goto/16 :goto_0

    .line 125
    :cond_16
    move-object v8, v4

    check-cast v8, Lgnu/lists/Pair;

    move-object v2, v8

    .line 126
    move-object v8, v5

    check-cast v8, Lgnu/lists/Pair;

    move-object v3, v8

    .line 127
    goto :goto_1

    .line 129
    .end local v2    # "pair1":Lgnu/lists/Pair;
    .end local v3    # "pair2":Lgnu/lists/Pair;
    .end local v4    # "x1":Ljava/lang/Object;
    .end local v5    # "x2":Ljava/lang/Object;
    :cond_17
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    move v0, v8

    goto/16 :goto_0
.end method

.method public static numberEquals(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 6

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "num1":Ljava/lang/Number;
    move-object v1, p1

    .local v1, "num2":Ljava/lang/Number;
    move-object v4, v0

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->isExact(Ljava/lang/Number;)Z

    move-result v4

    move v2, v4

    .line 21
    .local v2, "exact1":Z
    move-object v4, v1

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->isExact(Ljava/lang/Number;)Z

    move-result v4

    move v3, v4

    .line 22
    .local v3, "exact2":Z
    move v4, v2

    if-eqz v4, :cond_0

    move v4, v3

    if-eqz v4, :cond_0

    .line 23
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lgnu/kawa/functions/NumberCompare;->$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    move v0, v4

    .line 24
    .end local v0    # "num1":Ljava/lang/Number;
    :goto_0
    return v0

    .restart local v0    # "num1":Ljava/lang/Number;
    :cond_0
    move v4, v2

    move v5, v3

    if-ne v4, v5, :cond_1

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/IsEqual;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/IsEqual;->language:Lgnu/expr/Language;

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/functions/IsEqual;
    return-object v0
.end method
