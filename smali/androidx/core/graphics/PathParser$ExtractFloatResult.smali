.class Landroidx/core/graphics/PathParser$ExtractFloatResult;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtractFloatResult"
.end annotation


# instance fields
.field mEndPosition:I

.field mEndWithNegOrDot:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/PathParser$ExtractFloatResult;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 199
    return-void
.end method
