.class Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final DIR_TYPE_CACHE:[B

.field private static final DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 584
    const/16 v1, 0x700

    new-array v1, v1, [B

    sput-object v1, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    .line 585
    const/4 v1, 0x0

    move v0, v1

    .local v0, "i":I
    :goto_0
    move v1, v0

    const/16 v2, 0x700

    if-ge v1, v2, :cond_0

    .line 586
    sget-object v1, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    move v2, v0

    move v3, v0

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 5

    .prologue
    .line 628
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "isHtml":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 629
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    .line 630
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    .line 631
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v4, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 632
    return-void
.end method

.method private static getCachedDirectionality(C)B
    .locals 3

    .prologue
    .line 803
    move v0, p0

    .local v0, "c":C
    move v1, v0

    const/16 v2, 0x700

    if-ge v1, v2, :cond_0

    sget-object v1, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    move v2, v0

    aget-byte v1, v1, v2

    :goto_0
    move v0, v1

    .end local v0    # "c":C
    return v0

    .restart local v0    # "c":C
    :cond_0
    move v1, v0

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    goto :goto_0
.end method

.method private skipEntityBackward()B
    .locals 9

    .prologue
    .line 944
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    move-object v2, v0

    iget v2, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v1, v2

    .line 945
    .local v1, "initialCharIndex":I
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_2

    .line 946
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iput-char v3, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 947
    move-object v2, v0

    iget-char v2, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    .line 948
    const/16 v2, 0xc

    move v0, v2

    .line 956
    .end local v0    # "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    :goto_0
    return v0

    .line 950
    .restart local v0    # "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    :cond_1
    move-object v2, v0

    iget-char v2, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    .line 951
    .line 954
    :cond_2
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 955
    move-object v2, v0

    const/16 v3, 0x3b

    iput-char v3, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 956
    const/16 v2, 0xd

    move v0, v2

    goto :goto_0
.end method

.method private skipEntityForward()B
    .locals 9

    .prologue
    .line 929
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    :goto_0
    move-object v1, v0

    iget v1, v1, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v2, v0

    iget v2, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v1, v2, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move-object v7, v1

    move v8, v2

    move v1, v8

    move-object v2, v7

    move v3, v8

    iput-char v3, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 930
    :cond_0
    const/16 v1, 0xc

    move v0, v1

    .end local v0    # "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    return v0
.end method

.method private skipTagBackward()B
    .locals 10

    .prologue
    .line 901
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    move-object v3, v0

    iget v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v1, v3

    .line 902
    .local v1, "initialCharIndex":I
    :cond_0
    :goto_0
    move-object v3, v0

    iget v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v3, :cond_2

    .line 903
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iput-char v4, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 904
    move-object v3, v0

    iget-char v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_1

    .line 906
    const/16 v3, 0xc

    move v0, v3

    .line 920
    .end local v0    # "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    :goto_1
    return v0

    .line 908
    .restart local v0    # "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    :cond_1
    move-object v3, v0

    iget-char v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_3

    .line 909
    .line 918
    :cond_2
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 919
    move-object v3, v0

    const/16 v4, 0x3e

    iput-char v4, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 920
    const/16 v3, 0xd

    move v0, v3

    goto :goto_1

    .line 911
    :cond_3
    move-object v3, v0

    iget-char v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x22

    if-eq v3, v4, :cond_4

    move-object v3, v0

    iget-char v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x27

    if-ne v3, v4, :cond_0

    .line 913
    :cond_4
    move-object v3, v0

    iget-char v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    move v2, v3

    .line 914
    .local v2, "quote":C
    :goto_2
    move-object v3, v0

    iget v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v3, :cond_5

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput-char v5, v4, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    move v4, v2

    if-eq v3, v4, :cond_5

    goto :goto_2

    .line 915
    :cond_5
    goto :goto_0
.end method

.method private skipTagForward()B
    .locals 11

    .prologue
    .line 872
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    move-object v3, v0

    iget v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v1, v3

    .line 873
    .local v1, "initialCharIndex":I
    :cond_0
    :goto_0
    move-object v3, v0

    iget v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v4, v0

    iget v4, v4, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v3, v4, :cond_4

    .line 874
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iput-char v4, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 875
    move-object v3, v0

    iget-char v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_1

    .line 877
    const/16 v3, 0xc

    move v0, v3

    .line 888
    .end local v0    # "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    :goto_1
    return v0

    .line 879
    .restart local v0    # "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    :cond_1
    move-object v3, v0

    iget-char v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x22

    if-eq v3, v4, :cond_2

    move-object v3, v0

    iget-char v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x27

    if-ne v3, v4, :cond_0

    .line 881
    :cond_2
    move-object v3, v0

    iget-char v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    move v2, v3

    .line 882
    .local v2, "quote":C
    :goto_2
    move-object v3, v0

    iget v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v4, v0

    iget v4, v4, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v3, v4, :cond_3

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move-object v9, v3

    move v10, v4

    move v3, v10

    move-object v4, v9

    move v5, v10

    iput-char v5, v4, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    move v4, v2

    if-eq v3, v4, :cond_3

    goto :goto_2

    .line 883
    :cond_3
    goto :goto_0

    .line 886
    .end local v2    # "quote":C
    :cond_4
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 887
    move-object v3, v0

    const/16 v4, 0x3c

    iput-char v4, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 888
    const/16 v3, 0xd

    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method dirTypeBackward()B
    .locals 7

    .prologue
    .line 846
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v4, v0

    iget v4, v4, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iput-char v3, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 847
    move-object v2, v0

    iget-char v2, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 848
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v3, v0

    iget v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    move v1, v2

    .line 849
    .local v1, "codePoint":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v4, v1

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 850
    move v2, v1

    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    move v0, v2

    .line 862
    .end local v0    # "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    .end local v1    # "codePoint":I
    :goto_0
    return v0

    .line 852
    .restart local v0    # "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    :cond_0
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 853
    move-object v2, v0

    iget-char v2, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v2

    move v1, v2

    .line 854
    .local v1, "dirType":B
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_1

    .line 856
    move-object v2, v0

    iget-char v2, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_2

    .line 857
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v2

    move v1, v2

    .line 862
    :cond_1
    :goto_1
    move v2, v1

    move v0, v2

    goto :goto_0

    .line 858
    :cond_2
    move-object v2, v0

    iget-char v2, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1

    .line 859
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v2

    move v1, v2

    goto :goto_1
.end method

.method dirTypeForward()B
    .locals 6

    .prologue
    .line 816
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v4, v0

    iget v4, v4, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iput-char v3, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 817
    move-object v2, v0

    iget-char v2, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 818
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v3, v0

    iget v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    move v1, v2

    .line 819
    .local v1, "codePoint":I
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v4, v1

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 820
    move v2, v1

    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    move v0, v2

    .line 832
    .end local v0    # "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    .end local v1    # "codePoint":I
    :goto_0
    return v0

    .line 822
    .restart local v0    # "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 823
    move-object v2, v0

    iget-char v2, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v2

    move v1, v2

    .line 824
    .local v1, "dirType":B
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_1

    .line 826
    move-object v2, v0

    iget-char v2, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2

    .line 827
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v2

    move v1, v2

    .line 832
    :cond_1
    :goto_1
    move v2, v1

    move v0, v2

    goto :goto_0

    .line 828
    :cond_2
    move-object v2, v0

    iget-char v2, v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    .line 829
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v2

    move v1, v2

    goto :goto_1
.end method

.method getEntryDir()I
    .locals 6

    .prologue
    .line 646
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 647
    const/4 v4, 0x0

    move v1, v4

    .line 648
    .local v1, "embeddingLevel":I
    const/4 v4, 0x0

    move v2, v4

    .line 649
    .local v2, "embeddingLevelDir":I
    const/4 v4, 0x0

    move v3, v4

    .line 650
    .local v3, "firstNonEmptyEmbeddingLevel":I
    :goto_0
    move-object v4, v0

    iget v4, v4, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v5, v0

    iget v5, v5, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v4, v5, :cond_2

    move v4, v3

    if-nez v4, :cond_2

    .line 651
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 685
    :pswitch_0
    move v4, v1

    move v3, v4

    .line 686
    goto :goto_0

    .line 654
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    .line 655
    const/4 v4, -0x1

    move v2, v4

    .line 656
    goto :goto_0

    .line 659
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 660
    const/4 v4, 0x1

    move v2, v4

    .line 661
    goto :goto_0

    .line 663
    :pswitch_3
    add-int/lit8 v1, v1, -0x1

    .line 667
    const/4 v4, 0x0

    move v2, v4

    .line 668
    goto :goto_0

    .line 670
    :pswitch_4
    goto :goto_0

    .line 672
    :pswitch_5
    move v4, v1

    if-nez v4, :cond_0

    .line 673
    const/4 v4, -0x1

    move v0, v4

    .line 728
    .end local v0    # "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    :goto_1
    return v0

    .line 675
    .restart local v0    # "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    :cond_0
    move v4, v1

    move v3, v4

    .line 676
    goto :goto_0

    .line 679
    :pswitch_6
    move v4, v1

    if-nez v4, :cond_1

    .line 680
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1

    .line 682
    :cond_1
    move v4, v1

    move v3, v4

    .line 683
    goto :goto_0

    .line 692
    :cond_2
    move v4, v3

    if-nez v4, :cond_3

    .line 695
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    .line 699
    :cond_3
    move v4, v2

    if-eqz v4, :cond_4

    .line 701
    move v4, v2

    move v0, v4

    goto :goto_1

    .line 706
    :cond_4
    :goto_2
    move-object v4, v0

    iget v4, v4, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v4, :cond_7

    .line 707
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 724
    :goto_3
    goto :goto_2

    .line 710
    :pswitch_7
    move v4, v3

    move v5, v1

    if-ne v4, v5, :cond_5

    .line 711
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1

    .line 713
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 714
    goto :goto_3

    .line 717
    :pswitch_8
    move v4, v3

    move v5, v1

    if-ne v4, v5, :cond_6

    .line 718
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1

    .line 720
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 721
    goto :goto_3

    .line 723
    :pswitch_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 728
    :cond_7
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 707
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method getExitDir()I
    .locals 5

    .prologue
    .line 744
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v4, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 745
    const/4 v3, 0x0

    move v1, v3

    .line 746
    .local v1, "embeddingLevel":I
    const/4 v3, 0x0

    move v2, v3

    .line 747
    .local v2, "lastNonEmptyEmbeddingLevel":I
    :cond_0
    :goto_0
    move-object v3, v0

    iget v3, v3, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v3, :cond_5

    .line 748
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 786
    :pswitch_0
    move v3, v2

    if-nez v3, :cond_0

    .line 787
    move v3, v1

    move v2, v3

    goto :goto_0

    .line 750
    :pswitch_1
    move v3, v1

    if-nez v3, :cond_1

    .line 751
    const/4 v3, -0x1

    move v0, v3

    .line 792
    .end local v0    # "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    :goto_1
    return v0

    .line 753
    .restart local v0    # "this":Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    :cond_1
    move v3, v2

    if-nez v3, :cond_0

    .line 754
    move v3, v1

    move v2, v3

    goto :goto_0

    .line 759
    :pswitch_2
    move v3, v2

    move v4, v1

    if-ne v3, v4, :cond_2

    .line 760
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1

    .line 762
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 763
    goto :goto_0

    .line 766
    :pswitch_3
    move v3, v1

    if-nez v3, :cond_3

    .line 767
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 769
    :cond_3
    move v3, v2

    if-nez v3, :cond_0

    .line 770
    move v3, v1

    move v2, v3

    goto :goto_0

    .line 775
    :pswitch_4
    move v3, v2

    move v4, v1

    if-ne v3, v4, :cond_4

    .line 776
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 778
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 779
    goto :goto_0

    .line 781
    :pswitch_5
    add-int/lit8 v1, v1, 0x1

    .line 782
    goto :goto_0

    .line 784
    :pswitch_6
    goto :goto_0

    .line 792
    :cond_5
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 748
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
