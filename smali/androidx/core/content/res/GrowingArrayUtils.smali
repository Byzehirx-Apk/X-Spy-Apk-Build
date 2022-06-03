.class final Landroidx/core/content/res/GrowingArrayUtils;
.super Ljava/lang/Object;
.source "GrowingArrayUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Landroidx/core/content/res/GrowingArrayUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroidx/core/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/GrowingArrayUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append([III)[I
    .locals 10

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "array":[I
    move v1, p1

    .local v1, "currentSize":I
    move v2, p2

    .local v2, "element":I
    sget-boolean v4, Landroidx/core/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move v4, v1

    move-object v5, v0

    array-length v5, v5

    if-le v4, v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 59
    :cond_0
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    array-length v5, v5

    if-le v4, v5, :cond_1

    .line 60
    move v4, v1

    invoke-static {v4}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v4

    new-array v4, v4, [I

    move-object v3, v4

    .line 61
    .local v3, "newArray":[I
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    move-object v4, v3

    move-object v0, v4

    .line 64
    .end local v3    # "newArray":[I
    :cond_1
    move-object v4, v0

    move v5, v1

    move v6, v2

    aput v6, v4, v5

    .line 65
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "array":[I
    return-object v0
.end method

.method public static append([JIJ)[J
    .locals 12

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "array":[J
    move v1, p1

    .local v1, "currentSize":I
    move-wide v2, p2

    .local v2, "element":J
    sget-boolean v5, Landroidx/core/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    move v5, v1

    move-object v6, v0

    array-length v6, v6

    if-le v5, v6, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 74
    :cond_0
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    array-length v6, v6

    if-le v5, v6, :cond_1

    .line 75
    move v5, v1

    invoke-static {v5}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v5

    new-array v5, v5, [J

    move-object v4, v5

    .line 76
    .local v4, "newArray":[J
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    move-object v5, v4

    move-object v0, v5

    .line 79
    .end local v4    # "newArray":[J
    :cond_1
    move-object v5, v0

    move v6, v1

    move-wide v7, v2

    aput-wide v7, v5, v6

    .line 80
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "array":[J
    return-object v0
.end method

.method public static append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    move v1, p1

    .local v1, "currentSize":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TT;"
    sget-boolean v4, Landroidx/core/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move v4, v1

    move-object v5, v0

    array-length v5, v5

    if-le v4, v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 43
    :cond_0
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    array-length v5, v5

    if-le v4, v5, :cond_1

    .line 44
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    move v5, v1

    .line 45
    invoke-static {v5}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v5

    .line 44
    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    .line 46
    .local v3, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    move-object v4, v3

    move-object v0, v4

    .line 49
    .end local v3    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_1
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    aput-object v6, v4, v5

    .line 50
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "array":[Ljava/lang/Object;, "[TT;"
    return-object v0
.end method

.method public static append([ZIZ)[Z
    .locals 10

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "array":[Z
    move v1, p1

    .local v1, "currentSize":I
    move v2, p2

    .local v2, "element":Z
    sget-boolean v4, Landroidx/core/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move v4, v1

    move-object v5, v0

    array-length v5, v5

    if-le v4, v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 89
    :cond_0
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    array-length v5, v5

    if-le v4, v5, :cond_1

    .line 90
    move v4, v1

    invoke-static {v4}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v4

    new-array v4, v4, [Z

    move-object v3, v4

    .line 91
    .local v3, "newArray":[Z
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    move-object v4, v3

    move-object v0, v4

    .line 94
    .end local v3    # "newArray":[Z
    :cond_1
    move-object v4, v0

    move v5, v1

    move v6, v2

    aput-boolean v6, v4, v5

    .line 95
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "array":[Z
    return-object v0
.end method

.method public static growSize(I)I
    .locals 3

    .prologue
    .line 189
    move v0, p0

    .local v0, "currentSize":I
    move v1, v0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    const/16 v1, 0x8

    :goto_0
    move v0, v1

    .end local v0    # "currentSize":I
    return v0

    .restart local v0    # "currentSize":I
    :cond_0
    move v1, v0

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public static insert([IIII)[I
    .locals 12

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "array":[I
    move v1, p1

    .local v1, "currentSize":I
    move v2, p2

    .local v2, "index":I
    move v3, p3

    .local v3, "element":I
    sget-boolean v5, Landroidx/core/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    move v5, v1

    move-object v6, v0

    array-length v6, v6

    if-le v5, v6, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 132
    :cond_0
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    array-length v6, v6

    if-gt v5, v6, :cond_1

    .line 133
    move-object v5, v0

    move v6, v2

    move-object v7, v0

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v1

    move v10, v2

    sub-int/2addr v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    move-object v5, v0

    move v6, v2

    move v7, v3

    aput v7, v5, v6

    .line 135
    move-object v5, v0

    move-object v0, v5

    .line 142
    .end local v0    # "array":[I
    :goto_0
    return-object v0

    .line 138
    .restart local v0    # "array":[I
    :cond_1
    move v5, v1

    invoke-static {v5}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v5

    new-array v5, v5, [I

    move-object v4, v5

    .line 139
    .local v4, "newArray":[I
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    move-object v5, v4

    move v6, v2

    move v7, v3

    aput v7, v5, v6

    .line 141
    move-object v5, v0

    move v6, v2

    move-object v7, v4

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object v9, v0

    array-length v9, v9

    move v10, v2

    sub-int/2addr v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method public static insert([JIIJ)[J
    .locals 13

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "array":[J
    move v1, p1

    .local v1, "currentSize":I
    move v2, p2

    .local v2, "index":I
    move-wide/from16 v3, p3

    .local v3, "element":J
    sget-boolean v6, Landroidx/core/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    move v6, v1

    move-object v7, v0

    array-length v7, v7

    if-le v6, v7, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 151
    :cond_0
    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    array-length v7, v7

    if-gt v6, v7, :cond_1

    .line 152
    move-object v6, v0

    move v7, v2

    move-object v8, v0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v1

    move v11, v2

    sub-int/2addr v10, v11

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    move-object v6, v0

    move v7, v2

    move-wide v8, v3

    aput-wide v8, v6, v7

    .line 154
    move-object v6, v0

    move-object v0, v6

    .line 161
    .end local v0    # "array":[J
    :goto_0
    return-object v0

    .line 157
    .restart local v0    # "array":[J
    :cond_1
    move v6, v1

    invoke-static {v6}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v6

    new-array v6, v6, [J

    move-object v5, v6

    .line 158
    .local v5, "newArray":[J
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v5

    const/4 v9, 0x0

    move v10, v2

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    move-object v6, v5

    move v7, v2

    move-wide v8, v3

    aput-wide v8, v6, v7

    .line 160
    move-object v6, v0

    move v7, v2

    move-object v8, v5

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v0

    array-length v10, v10

    move v11, v2

    sub-int/2addr v10, v11

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    move-object v6, v5

    move-object v0, v6

    goto :goto_0
.end method

.method public static insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;)[TT;"
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    move v1, p1

    .local v1, "currentSize":I
    move v2, p2

    .local v2, "index":I
    move-object v3, p3

    .local v3, "element":Ljava/lang/Object;, "TT;"
    sget-boolean v5, Landroidx/core/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    move v5, v1

    move-object v6, v0

    array-length v6, v6

    if-le v5, v6, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 112
    :cond_0
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    array-length v6, v6

    if-gt v5, v6, :cond_1

    .line 113
    move-object v5, v0

    move v6, v2

    move-object v7, v0

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v1

    move v10, v2

    sub-int/2addr v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    move-object v5, v0

    move v6, v2

    move-object v7, v3

    aput-object v7, v5, v6

    .line 115
    move-object v5, v0

    move-object v0, v5

    .line 123
    .end local v0    # "array":[Ljava/lang/Object;, "[TT;"
    :goto_0
    return-object v0

    .line 118
    .restart local v0    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    move v6, v1

    .line 119
    invoke-static {v6}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v6

    .line 118
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v4, v5

    .line 120
    .local v4, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    move-object v5, v4

    move v6, v2

    move-object v7, v3

    aput-object v7, v5, v6

    .line 122
    move-object v5, v0

    move v6, v2

    move-object v7, v4

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object v9, v0

    array-length v9, v9

    move v10, v2

    sub-int/2addr v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method public static insert([ZIIZ)[Z
    .locals 12

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "array":[Z
    move v1, p1

    .local v1, "currentSize":I
    move v2, p2

    .local v2, "index":I
    move v3, p3

    .local v3, "element":Z
    sget-boolean v5, Landroidx/core/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    move v5, v1

    move-object v6, v0

    array-length v6, v6

    if-le v5, v6, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 170
    :cond_0
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    array-length v6, v6

    if-gt v5, v6, :cond_1

    .line 171
    move-object v5, v0

    move v6, v2

    move-object v7, v0

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v1

    move v10, v2

    sub-int/2addr v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    move-object v5, v0

    move v6, v2

    move v7, v3

    aput-boolean v7, v5, v6

    .line 173
    move-object v5, v0

    move-object v0, v5

    .line 180
    .end local v0    # "array":[Z
    :goto_0
    return-object v0

    .line 176
    .restart local v0    # "array":[Z
    :cond_1
    move v5, v1

    invoke-static {v5}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v5

    new-array v5, v5, [Z

    move-object v4, v5

    .line 177
    .local v4, "newArray":[Z
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    move-object v5, v4

    move v6, v2

    move v7, v3

    aput-boolean v7, v5, v6

    .line 179
    move-object v5, v0

    move v6, v2

    move-object v7, v4

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object v9, v0

    array-length v9, v9

    move v10, v2

    sub-int/2addr v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method
