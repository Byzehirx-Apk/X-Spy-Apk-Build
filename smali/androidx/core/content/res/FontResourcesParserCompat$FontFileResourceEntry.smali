.class public final Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/FontResourcesParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontFileResourceEntry"
.end annotation


# instance fields
.field private final mFileName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mItalic:Z

.field private mResourceId:I

.field private mTtcIndex:I

.field private mVariationSettings:Ljava/lang/String;

.field private mWeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;II)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move v2, p2

    .local v2, "weight":I
    move v3, p3

    .local v3, "italic":Z
    move-object v4, p4

    .local v4, "variationSettings":Ljava/lang/String;
    move v5, p5

    .local v5, "ttcIndex":I
    move v6, p6

    .local v6, "resourceId":I
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 114
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    .line 115
    move-object v7, v0

    move v8, v2

    iput v8, v7, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mWeight:I

    .line 116
    move-object v7, v0

    move v8, v3

    iput-boolean v8, v7, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mItalic:Z

    .line 117
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mVariationSettings:Ljava/lang/String;

    .line 118
    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mTtcIndex:I

    .line 119
    move-object v7, v0

    move v8, v6

    iput v8, v7, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mResourceId:I

    .line 120
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    return-object v0
.end method

.method public getResourceId()I
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    move-object v1, v0

    iget v1, v1, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mResourceId:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    return v0
.end method

.method public getTtcIndex()I
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    move-object v1, v0

    iget v1, v1, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mTtcIndex:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    return v0
.end method

.method public getVariationSettings()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mVariationSettings:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    return-object v0
.end method

.method public getWeight()I
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    move-object v1, v0

    iget v1, v1, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mWeight:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    return v0
.end method

.method public isItalic()Z
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mItalic:Z

    move v0, v1

    .end local v0    # "this":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    return v0
.end method
