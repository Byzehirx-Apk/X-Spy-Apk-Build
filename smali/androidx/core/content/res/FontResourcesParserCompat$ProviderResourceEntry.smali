.class public final Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"

# interfaces
.implements Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/FontResourcesParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderResourceEntry"
.end annotation


# instance fields
.field private final mRequest:Landroidx/core/provider/FontRequest;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mStrategy:I

.field private final mTimeoutMs:I


# direct methods
.method public constructor <init>(Landroidx/core/provider/FontRequest;II)V
    .locals 6
    .param p1    # Landroidx/core/provider/FontRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;
    move-object v1, p1

    .local v1, "request":Landroidx/core/provider/FontRequest;
    move v2, p2

    .local v2, "strategy":I
    move v3, p3

    .local v3, "timeoutMs":I
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 83
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mRequest:Landroidx/core/provider/FontRequest;

    .line 84
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mStrategy:I

    .line 85
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mTimeoutMs:I

    .line 86
    return-void
.end method


# virtual methods
.method public getFetchStrategy()I
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;
    move-object v1, v0

    iget v1, v1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mStrategy:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;
    return v0
.end method

.method public getRequest()Landroidx/core/provider/FontRequest;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mRequest:Landroidx/core/provider/FontRequest;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;
    return-object v0
.end method

.method public getTimeout()I
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;
    move-object v1, v0

    iget v1, v1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mTimeoutMs:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;
    return v0
.end method
