.class public Lgnu/xquery/util/Compare;
.super Lgnu/mapping/Procedure2;
.source "Compare.java"


# static fields
.field public static final $Eq:Lgnu/xquery/util/Compare;

.field public static final $Ex$Eq:Lgnu/xquery/util/Compare;

.field public static final $Gr:Lgnu/xquery/util/Compare;

.field public static final $Gr$Eq:Lgnu/xquery/util/Compare;

.field public static final $Ls:Lgnu/xquery/util/Compare;

.field public static final $Ls$Eq:Lgnu/xquery/util/Compare;

.field static final LENIENT_COMPARISON:I = 0x40

.field static final LENIENT_EQ:I = 0x48

.field static final RESULT_EQU:I = 0x0

.field static final RESULT_GRT:I = 0x1

.field static final RESULT_LSS:I = -0x1

.field static final RESULT_NAN:I = -0x2

.field static final RESULT_NEQ:I = -0x3

.field static final TRUE_IF_EQU:I = 0x8

.field static final TRUE_IF_GRT:I = 0x10

.field static final TRUE_IF_LSS:I = 0x4

.field static final TRUE_IF_NAN:I = 0x2

.field static final TRUE_IF_NEQ:I = 0x1

.field static final VALUE_COMPARISON:I = 0x20

.field public static final valEq:Lgnu/xquery/util/Compare;

.field public static final valGe:Lgnu/xquery/util/Compare;

.field public static final valGt:Lgnu/xquery/util/Compare;

.field public static final valLe:Lgnu/xquery/util/Compare;

.field public static final valLt:Lgnu/xquery/util/Compare;

.field public static final valNe:Lgnu/xquery/util/Compare;


# instance fields
.field flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 234
    const-string/jumbo v0, "="

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Eq:Lgnu/xquery/util/Compare;

    .line 235
    const-string/jumbo v0, "!="

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Ex$Eq:Lgnu/xquery/util/Compare;

    .line 237
    const-string/jumbo v0, ">"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Gr:Lgnu/xquery/util/Compare;

    .line 238
    const-string/jumbo v0, ">="

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Gr$Eq:Lgnu/xquery/util/Compare;

    .line 239
    const-string/jumbo v0, "<"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Ls:Lgnu/xquery/util/Compare;

    .line 240
    const-string/jumbo v0, "<="

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Ls$Eq:Lgnu/xquery/util/Compare;

    .line 242
    const-string/jumbo v0, "eq"

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valEq:Lgnu/xquery/util/Compare;

    .line 244
    const-string/jumbo v0, "ne"

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valNe:Lgnu/xquery/util/Compare;

    .line 246
    const-string/jumbo v0, "gt"

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valGt:Lgnu/xquery/util/Compare;

    .line 248
    const-string/jumbo v0, "ge"

    const/16 v1, 0x38

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valGe:Lgnu/xquery/util/Compare;

    .line 250
    const-string/jumbo v0, "lt"

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valLt:Lgnu/xquery/util/Compare;

    .line 252
    const-string/jumbo v0, "le"

    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valLe:Lgnu/xquery/util/Compare;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/Compare;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    .locals 12

    .prologue
    .line 62
    move v0, p0

    .local v0, "flags":I
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "collator":Lgnu/xquery/util/NamedCollator;
    move-object v7, v1

    instance-of v7, v7, Lgnu/mapping/Values;

    if-eqz v7, :cond_2

    .line 64
    move-object v7, v1

    check-cast v7, Lgnu/mapping/Values;

    move-object v4, v7

    .line 65
    .local v4, "values1":Lgnu/mapping/Values;
    const/4 v7, 0x0

    move v5, v7

    .line 68
    .local v5, "index":I
    :goto_0
    move-object v7, v4

    move v8, v5

    invoke-virtual {v7, v8}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v7

    move v6, v7

    .line 69
    .local v6, "next":I
    move v7, v6

    if-gez v7, :cond_0

    .line 70
    const/4 v7, 0x0

    move v0, v7

    .line 90
    .end local v0    # "flags":I
    .end local v4    # "values1":Lgnu/mapping/Values;
    .end local v5    # "index":I
    .end local v6    # "next":I
    :goto_1
    return v0

    .line 71
    .restart local v0    # "flags":I
    .restart local v4    # "values1":Lgnu/mapping/Values;
    .restart local v5    # "index":I
    .restart local v6    # "next":I
    :cond_0
    move v7, v0

    move-object v8, v4

    move v9, v5

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v2

    move-object v10, v3

    invoke-static {v7, v8, v9, v10}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 72
    const/4 v7, 0x1

    move v0, v7

    goto :goto_1

    .line 73
    :cond_1
    move v7, v6

    move v5, v7

    .line 74
    goto :goto_0

    .line 76
    .end local v4    # "values1":Lgnu/mapping/Values;
    .end local v5    # "index":I
    .end local v6    # "next":I
    :cond_2
    move-object v7, v2

    instance-of v7, v7, Lgnu/mapping/Values;

    if-eqz v7, :cond_5

    .line 78
    move-object v7, v2

    check-cast v7, Lgnu/mapping/Values;

    move-object v4, v7

    .line 79
    .local v4, "values2":Lgnu/mapping/Values;
    const/4 v7, 0x0

    move v5, v7

    .line 82
    .restart local v5    # "index":I
    :goto_2
    move-object v7, v4

    move v8, v5

    invoke-virtual {v7, v8}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v7

    move v6, v7

    .line 83
    .restart local v6    # "next":I
    move v7, v6

    if-gez v7, :cond_3

    .line 84
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1

    .line 85
    :cond_3
    move v7, v0

    move-object v8, v1

    move-object v9, v4

    move v10, v5

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v3

    invoke-static {v7, v8, v9, v10}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 86
    const/4 v7, 0x1

    move v0, v7

    goto :goto_1

    .line 87
    :cond_4
    move v7, v6

    move v5, v7

    .line 88
    goto :goto_2

    .line 90
    .end local v4    # "values2":Lgnu/mapping/Values;
    .end local v5    # "index":I
    .end local v6    # "next":I
    :cond_5
    move v7, v0

    move-object v8, v1

    invoke-static {v8}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v2

    invoke-static {v9}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v3

    invoke-static {v7, v8, v9, v10}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v7

    move v0, v7

    goto :goto_1
.end method

.method public static atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    .locals 13

    .prologue
    .line 104
    move v0, p0

    .local v0, "flags":I
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "collator":Lgnu/xquery/util/NamedCollator;
    move-object v9, v1

    instance-of v9, v9, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v9, :cond_0

    .line 106
    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 107
    .local v4, "str":Ljava/lang/String;
    move v9, v0

    const/16 v10, 0x20

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_3

    .line 108
    move-object v9, v4

    move-object v1, v9

    .line 120
    .end local v1    # "arg1":Ljava/lang/Object;
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v9, v2

    instance-of v9, v9, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v9, :cond_1

    .line 122
    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 123
    .restart local v4    # "str":Ljava/lang/String;
    move v9, v0

    const/16 v10, 0x20

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_8

    .line 124
    move-object v9, v4

    move-object v2, v9

    .line 137
    .end local v2    # "arg2":Ljava/lang/Object;
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    :goto_1
    move-object v9, v1

    instance-of v9, v9, Ljava/lang/Number;

    if-nez v9, :cond_2

    move-object v9, v2

    instance-of v9, v9, Ljava/lang/Number;

    if-eqz v9, :cond_18

    .line 139
    :cond_2
    move-object v9, v1

    instance-of v9, v9, Lgnu/math/Duration;

    if-eqz v9, :cond_10

    .line 141
    move-object v9, v2

    instance-of v9, v9, Lgnu/math/Duration;

    if-nez v9, :cond_d

    .line 142
    const/4 v9, -0x3

    move v4, v9

    .line 179
    .local v4, "comp":I
    :goto_2
    move v9, v4

    const/4 v10, -0x3

    if-ne v9, v10, :cond_17

    move v9, v0

    const/16 v10, 0x40

    and-int/lit8 v9, v9, 0x40

    if-nez v9, :cond_17

    .line 180
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string/jumbo v11, "values cannot be compared"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 109
    .restart local v1    # "arg1":Ljava/lang/Object;
    .restart local v2    # "arg2":Ljava/lang/Object;
    .local v4, "str":Ljava/lang/String;
    :cond_3
    move-object v9, v2

    instance-of v9, v9, Lgnu/math/DateTime;

    if-eqz v9, :cond_4

    .line 110
    move-object v9, v4

    move-object v10, v2

    check-cast v10, Lgnu/math/DateTime;

    invoke-virtual {v10}, Lgnu/math/DateTime;->components()I

    move-result v10

    invoke-static {v9, v10}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object v9

    move-object v1, v9

    .local v1, "arg1":Lgnu/math/DateTime;
    goto :goto_0

    .line 111
    .local v1, "arg1":Ljava/lang/Object;
    :cond_4
    move-object v9, v2

    instance-of v9, v9, Lgnu/math/Duration;

    if-eqz v9, :cond_5

    .line 112
    move-object v9, v4

    move-object v10, v2

    check-cast v10, Lgnu/math/Duration;

    invoke-virtual {v10}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v10

    invoke-static {v9, v10}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v9

    move-object v1, v9

    .local v1, "arg1":Lgnu/math/Duration;
    goto :goto_0

    .line 113
    .local v1, "arg1":Ljava/lang/Object;
    :cond_5
    move-object v9, v2

    instance-of v9, v9, Ljava/lang/Number;

    if-eqz v9, :cond_6

    .line 114
    new-instance v9, Lgnu/math/DFloNum;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v4

    invoke-direct {v10, v11}, Lgnu/math/DFloNum;-><init>(Ljava/lang/String;)V

    move-object v1, v9

    .local v1, "arg1":Lgnu/math/DFloNum;
    goto :goto_0

    .line 115
    .local v1, "arg1":Ljava/lang/Object;
    :cond_6
    move-object v9, v2

    instance-of v9, v9, Ljava/lang/Boolean;

    if-eqz v9, :cond_7

    .line 116
    sget-object v9, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    move-object v10, v4

    invoke-virtual {v9, v10}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_0

    .line 118
    :cond_7
    move-object v9, v4

    move-object v1, v9

    .local v1, "arg1":Ljava/lang/String;
    goto/16 :goto_0

    .line 125
    .end local v1    # "arg1":Ljava/lang/String;
    :cond_8
    move-object v9, v1

    instance-of v9, v9, Lgnu/math/DateTime;

    if-eqz v9, :cond_9

    .line 126
    move-object v9, v4

    move-object v10, v1

    check-cast v10, Lgnu/math/DateTime;

    invoke-virtual {v10}, Lgnu/math/DateTime;->components()I

    move-result v10

    invoke-static {v9, v10}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object v9

    move-object v2, v9

    .local v2, "arg2":Lgnu/math/DateTime;
    goto/16 :goto_1

    .line 127
    .local v2, "arg2":Ljava/lang/Object;
    :cond_9
    move-object v9, v1

    instance-of v9, v9, Lgnu/math/Duration;

    if-eqz v9, :cond_a

    .line 128
    move-object v9, v4

    move-object v10, v1

    check-cast v10, Lgnu/math/Duration;

    invoke-virtual {v10}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v10

    invoke-static {v9, v10}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v9

    move-object v2, v9

    .local v2, "arg2":Lgnu/math/Duration;
    goto/16 :goto_1

    .line 129
    .local v2, "arg2":Ljava/lang/Object;
    :cond_a
    move-object v9, v1

    instance-of v9, v9, Ljava/lang/Number;

    if-eqz v9, :cond_b

    .line 130
    new-instance v9, Lgnu/math/DFloNum;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v4

    invoke-direct {v10, v11}, Lgnu/math/DFloNum;-><init>(Ljava/lang/String;)V

    move-object v2, v9

    .local v2, "arg2":Lgnu/math/DFloNum;
    goto/16 :goto_1

    .line 131
    .local v2, "arg2":Ljava/lang/Object;
    :cond_b
    move-object v9, v1

    instance-of v9, v9, Ljava/lang/Boolean;

    if-eqz v9, :cond_c

    .line 132
    sget-object v9, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    move-object v10, v4

    invoke-virtual {v9, v10}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v2, v9

    goto/16 :goto_1

    .line 134
    :cond_c
    move-object v9, v4

    move-object v2, v9

    .local v2, "arg2":Ljava/lang/String;
    goto/16 :goto_1

    .line 145
    .end local v2    # "arg2":Ljava/lang/String;
    .end local v4    # "str":Ljava/lang/String;
    :cond_d
    move-object v9, v1

    check-cast v9, Lgnu/math/Duration;

    move-object v5, v9

    .line 146
    .local v5, "d1":Lgnu/math/Duration;
    move-object v9, v2

    check-cast v9, Lgnu/math/Duration;

    move-object v6, v9

    .line 147
    .local v6, "d2":Lgnu/math/Duration;
    move-object v9, v5

    iget-object v9, v9, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    move-object v10, v6

    iget-object v10, v10, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    if-ne v9, v10, :cond_e

    move-object v9, v5

    iget-object v9, v9, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v10, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    if-ne v9, v10, :cond_f

    :cond_e
    move v9, v0

    invoke-static {v9}, Lgnu/xquery/util/Compare;->equalityComparison(I)Z

    move-result v9

    if-nez v9, :cond_f

    .line 149
    const/4 v9, -0x3

    move v4, v9

    .line 152
    .local v4, "comp":I
    :goto_3
    goto/16 :goto_2

    .line 151
    .end local v4    # "comp":I
    :cond_f
    move-object v9, v5

    move-object v10, v6

    invoke-static {v9, v10}, Lgnu/math/Duration;->compare(Lgnu/math/Duration;Lgnu/math/Duration;)I

    move-result v9

    move v4, v9

    .restart local v4    # "comp":I
    goto :goto_3

    .line 154
    .end local v4    # "comp":I
    .end local v5    # "d1":Lgnu/math/Duration;
    .end local v6    # "d2":Lgnu/math/Duration;
    :cond_10
    move-object v9, v1

    instance-of v9, v9, Lgnu/math/DateTime;

    if-eqz v9, :cond_14

    .line 156
    move-object v9, v2

    instance-of v9, v9, Lgnu/math/DateTime;

    if-nez v9, :cond_11

    .line 157
    const/4 v9, -0x3

    move v4, v9

    .restart local v4    # "comp":I
    goto/16 :goto_2

    .line 160
    .end local v4    # "comp":I
    :cond_11
    move-object v9, v1

    check-cast v9, Lgnu/math/DateTime;

    move-object v5, v9

    .line 161
    .local v5, "d1":Lgnu/math/DateTime;
    move-object v9, v2

    check-cast v9, Lgnu/math/DateTime;

    move-object v6, v9

    .line 162
    .local v6, "d2":Lgnu/math/DateTime;
    move-object v9, v5

    invoke-virtual {v9}, Lgnu/math/DateTime;->components()I

    move-result v9

    move v7, v9

    .line 163
    .local v7, "m1":I
    move-object v9, v6

    invoke-virtual {v9}, Lgnu/math/DateTime;->components()I

    move-result v9

    move v8, v9

    .line 164
    .local v8, "m2":I
    move v9, v7

    move v10, v8

    if-eq v9, v10, :cond_12

    .line 165
    const/4 v9, -0x3

    move v4, v9

    .line 173
    .restart local v4    # "comp":I
    :goto_4
    goto/16 :goto_2

    .line 166
    .end local v4    # "comp":I
    :cond_12
    move v9, v0

    invoke-static {v9}, Lgnu/xquery/util/Compare;->equalityComparison(I)Z

    move-result v9

    if-nez v9, :cond_13

    move v9, v7

    const/16 v10, 0x70

    if-eq v9, v10, :cond_13

    move v9, v7

    const/16 v10, 0xe

    if-eq v9, v10, :cond_13

    move v9, v7

    const/16 v10, 0x7e

    if-eq v9, v10, :cond_13

    .line 170
    const/4 v9, -0x3

    move v4, v9

    .restart local v4    # "comp":I
    goto :goto_4

    .line 172
    .end local v4    # "comp":I
    :cond_13
    move-object v9, v5

    move-object v10, v6

    invoke-static {v9, v10}, Lgnu/math/DateTime;->compare(Lgnu/math/DateTime;Lgnu/math/DateTime;)I

    move-result v9

    move v4, v9

    .restart local v4    # "comp":I
    goto :goto_4

    .line 175
    .end local v4    # "comp":I
    .end local v5    # "d1":Lgnu/math/DateTime;
    .end local v6    # "d2":Lgnu/math/DateTime;
    .end local v7    # "m1":I
    .end local v8    # "m2":I
    :cond_14
    move-object v9, v2

    instance-of v9, v9, Lgnu/math/Duration;

    if-nez v9, :cond_15

    move-object v9, v2

    instance-of v9, v9, Lgnu/math/DateTime;

    if-eqz v9, :cond_16

    .line 176
    :cond_15
    const/4 v9, -0x3

    move v4, v9

    .restart local v4    # "comp":I
    goto/16 :goto_2

    .line 178
    .end local v4    # "comp":I
    :cond_16
    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result v9

    move v4, v9

    .restart local v4    # "comp":I
    goto/16 :goto_2

    .line 181
    :cond_17
    move v9, v4

    move v10, v0

    invoke-static {v9, v10}, Lgnu/kawa/functions/NumberCompare;->checkCompareCode(II)Z

    move-result v9

    move v0, v9

    .line 217
    .end local v0    # "flags":I
    :goto_5
    return v0

    .line 183
    .end local v4    # "comp":I
    .restart local v0    # "flags":I
    :cond_18
    move-object v9, v1

    instance-of v9, v9, Lgnu/mapping/Symbol;

    if-eqz v9, :cond_1b

    .line 185
    move-object v9, v2

    instance-of v9, v9, Lgnu/mapping/Symbol;

    if-eqz v9, :cond_1a

    move v9, v0

    invoke-static {v9}, Lgnu/xquery/util/Compare;->equalityComparison(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 186
    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    const/4 v9, 0x0

    :goto_6
    move v4, v9

    .line 215
    .restart local v4    # "comp":I
    :goto_7
    move v9, v4

    const/4 v10, -0x3

    if-ne v9, v10, :cond_25

    move v9, v0

    const/16 v10, 0x40

    and-int/lit8 v9, v9, 0x40

    if-nez v9, :cond_25

    .line 216
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string/jumbo v11, "values cannot be compared"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 186
    .end local v4    # "comp":I
    :cond_19
    const/4 v9, -0x2

    goto :goto_6

    .line 188
    :cond_1a
    const/4 v9, -0x3

    move v4, v9

    .restart local v4    # "comp":I
    goto :goto_7

    .line 190
    .end local v4    # "comp":I
    :cond_1b
    move-object v9, v1

    instance-of v9, v9, Ljava/lang/Boolean;

    if-eqz v9, :cond_1f

    .line 192
    move-object v9, v2

    instance-of v9, v9, Ljava/lang/Boolean;

    if-eqz v9, :cond_1e

    .line 194
    move-object v9, v1

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move v5, v9

    .line 195
    .local v5, "b1":Z
    move-object v9, v2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move v6, v9

    .line 196
    .local v6, "b2":Z
    move v9, v5

    move v10, v6

    if-ne v9, v10, :cond_1c

    const/4 v9, 0x0

    :goto_8
    move v4, v9

    .line 197
    .restart local v4    # "comp":I
    goto :goto_7

    .line 196
    .end local v4    # "comp":I
    :cond_1c
    move v9, v6

    if-eqz v9, :cond_1d

    const/4 v9, -0x1

    goto :goto_8

    :cond_1d
    const/4 v9, 0x1

    goto :goto_8

    .line 199
    .end local v5    # "b1":Z
    .end local v6    # "b2":Z
    :cond_1e
    const/4 v9, -0x3

    move v4, v9

    .restart local v4    # "comp":I
    goto :goto_7

    .line 201
    .end local v4    # "comp":I
    :cond_1f
    move-object v9, v2

    instance-of v9, v9, Ljava/lang/Boolean;

    if-nez v9, :cond_20

    move-object v9, v2

    instance-of v9, v9, Lgnu/mapping/Symbol;

    if-eqz v9, :cond_21

    .line 202
    :cond_20
    const/4 v9, -0x3

    move v4, v9

    .restart local v4    # "comp":I
    goto :goto_7

    .line 205
    .end local v4    # "comp":I
    :cond_21
    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 206
    .local v5, "str1":Ljava/lang/String;
    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 208
    .local v6, "str2":Ljava/lang/String;
    move-object v9, v3

    if-eqz v9, :cond_22

    .line 209
    move-object v9, v3

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Lgnu/xquery/util/NamedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move v4, v9

    .line 213
    .restart local v4    # "comp":I
    :goto_9
    move v9, v4

    if-gez v9, :cond_23

    const/4 v9, -0x1

    :goto_a
    move v4, v9

    goto :goto_7

    .line 212
    .end local v4    # "comp":I
    :cond_22
    move-object v9, v5

    move-object v10, v6

    invoke-static {v9, v10}, Lgnu/xquery/util/NamedCollator;->codepointCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move v4, v9

    .restart local v4    # "comp":I
    goto :goto_9

    .line 213
    :cond_23
    move v9, v4

    if-lez v9, :cond_24

    const/4 v9, 0x1

    goto :goto_a

    :cond_24
    const/4 v9, 0x0

    goto :goto_a

    .line 217
    .end local v5    # "str1":Ljava/lang/String;
    .end local v6    # "str2":Ljava/lang/String;
    :cond_25
    move v9, v4

    move v10, v0

    invoke-static {v9, v10}, Lgnu/kawa/functions/NumberCompare;->checkCompareCode(II)Z

    move-result v9

    move v0, v9

    goto/16 :goto_5
.end method

.method public static equalityComparison(I)Z
    .locals 4

    .prologue
    .line 98
    move v0, p0

    .local v0, "flags":I
    move v1, v0

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v2, v0

    const/4 v3, 0x4

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_2
    move v0, v1

    .end local v0    # "flags":I
    return v0

    .restart local v0    # "flags":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move v1, p1

    .local v1, "flags":I
    new-instance v3, Lgnu/xquery/util/Compare;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lgnu/xquery/util/Compare;-><init>()V

    move-object v2, v3

    .line 35
    .local v2, "proc":Lgnu/xquery/util/Compare;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/xquery/util/Compare;->setName(Ljava/lang/String;)V

    .line 36
    move-object v3, v2

    sget-object v4, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v5, "gnu.xquery.util.CompileMisc:validateCompare"

    invoke-virtual {v3, v4, v5}, Lgnu/xquery/util/Compare;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    move-object v3, v2

    move v4, v1

    iput v4, v3, Lgnu/xquery/util/Compare;->flags:I

    .line 39
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/Compare;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, v0

    iget v3, v3, Lgnu/xquery/util/Compare;->flags:I

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    .line 224
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v3, v4, :cond_1

    :cond_0
    move-object v3, v1

    move-object v0, v3

    .line 231
    .end local v0    # "this":Lgnu/xquery/util/Compare;
    :goto_0
    return-object v0

    .line 225
    .restart local v0    # "this":Lgnu/xquery/util/Compare;
    :cond_1
    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v3, v4, :cond_3

    :cond_2
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 226
    :cond_3
    move-object v3, v0

    iget v3, v3, Lgnu/xquery/util/Compare;->flags:I

    move-object v4, v1

    invoke-static {v4}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v2

    invoke-static {v5}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_4
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 231
    :cond_5
    move-object v3, v0

    iget v3, v3, Lgnu/xquery/util/Compare;->flags:I

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    move-object v0, v3

    goto :goto_0

    :cond_6
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2
.end method
