.class public Landroidx/core/app/NotificationCompat$BigPictureStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation


# instance fields
.field private mBigLargeIcon:Landroid/graphics/Bitmap;

.field private mBigLargeIconSet:Z

.field private mPicture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1989
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$BigPictureStyle;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 1990
    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 4

    .prologue
    .line 1992
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$BigPictureStyle;
    move-object v1, p1

    .local v1, "builder":Landroidx/core/app/NotificationCompat$Builder;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 1993
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 1994
    return-void
.end method


# virtual methods
.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2037
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$BigPictureStyle;
    move-object v1, p1

    .local v1, "builder":Landroidx/core/app/NotificationBuilderWithBuilderAccessor;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 2038
    new-instance v3, Landroid/app/Notification$BigPictureStyle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    .line 2039
    invoke-interface {v5}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 2040
    invoke-virtual {v3, v4}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    .line 2041
    invoke-virtual {v3, v4}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v3

    move-object v2, v3

    .line 2042
    .local v2, "style":Landroid/app/Notification$BigPictureStyle;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v3, :cond_0

    .line 2043
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v3

    .line 2045
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    if-eqz v3, :cond_1

    .line 2046
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v3

    .line 2049
    .end local v2    # "style":Landroid/app/Notification$BigPictureStyle;
    :cond_1
    return-void
.end method

.method public bigLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .locals 4

    .prologue
    .line 2026
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$BigPictureStyle;
    move-object v1, p1

    .local v1, "b":Landroid/graphics/Bitmap;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    .line 2027
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    .line 2028
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$BigPictureStyle;
    return-object v0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .locals 4

    .prologue
    .line 2018
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$BigPictureStyle;
    move-object v1, p1

    .local v1, "b":Landroid/graphics/Bitmap;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    .line 2019
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$BigPictureStyle;
    return-object v0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .locals 4

    .prologue
    .line 2001
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$BigPictureStyle;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 2002
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$BigPictureStyle;
    return-object v0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .locals 4

    .prologue
    .line 2009
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$BigPictureStyle;
    move-object v1, p1

    .local v1, "cs":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 2010
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    .line 2011
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$BigPictureStyle;
    return-object v0
.end method
