.class public Landroidx/core/app/NotificationCompat$BigTextStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# instance fields
.field private mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 2076
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$BigTextStyle;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 2077
    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 4

    .prologue
    .line 2079
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$BigTextStyle;
    move-object v1, p1

    .local v1, "builder":Landroidx/core/app/NotificationCompat$Builder;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 2080
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 2081
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
    .line 2116
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$BigTextStyle;
    move-object v1, p1

    .local v1, "builder":Landroidx/core/app/NotificationBuilderWithBuilderAccessor;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 2117
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    .line 2118
    invoke-interface {v5}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 2119
    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 2120
    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    move-object v2, v3

    .line 2121
    .local v2, "style":Landroid/app/Notification$BigTextStyle;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/core/app/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    if-eqz v3, :cond_0

    .line 2122
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    .line 2125
    .end local v2    # "style":Landroid/app/Notification$BigTextStyle;
    :cond_0
    return-void
.end method

.method public bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;
    .locals 4

    .prologue
    .line 2106
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$BigTextStyle;
    move-object v1, p1

    .local v1, "cs":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 2107
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$BigTextStyle;
    return-object v0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;
    .locals 4

    .prologue
    .line 2088
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$BigTextStyle;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 2089
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$BigTextStyle;
    return-object v0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;
    .locals 4

    .prologue
    .line 2096
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$BigTextStyle;
    move-object v1, p1

    .local v1, "cs":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 2097
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/core/app/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    .line 2098
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$BigTextStyle;
    return-object v0
.end method
