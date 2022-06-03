.class Landroidx/core/text/util/LinkifyCompat$LinkSpec;
.super Ljava/lang/Object;
.source "LinkifyCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/LinkifyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkSpec"
.end annotation


# instance fields
.field end:I

.field frameworkAddedSpan:Landroid/text/style/URLSpan;

.field start:I

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 551
    return-void
.end method
