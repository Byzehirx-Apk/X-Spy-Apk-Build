.class Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"

# interfaces
.implements Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstStrong"
.end annotation


# static fields
.field static final INSTANCE:Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 193
    new-instance v0, Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;-><init>()V

    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .locals 9

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;
    move-object v1, p1

    .local v1, "cs":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "count":I
    const/4 v7, 0x2

    move v4, v7

    .line 184
    .local v4, "result":I
    move v7, v2

    move v5, v7

    .local v5, "i":I
    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    move v6, v7

    .local v6, "e":I
    :goto_0
    move v7, v5

    move v8, v6

    if-ge v7, v8, :cond_0

    move v7, v4

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 185
    move-object v7, v1

    move v8, v5

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v7

    invoke-static {v7}, Landroidx/core/text/TextDirectionHeuristicsCompat;->isRtlTextOrFormat(I)I

    move-result v7

    move v4, v7

    .line 184
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 187
    :cond_0
    move v7, v4

    move v0, v7

    .end local v0    # "this":Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;
    return v0
.end method
