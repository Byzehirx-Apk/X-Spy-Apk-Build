.class public Landroidx/core/app/NotificationCompat$InboxStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation


# instance fields
.field private mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 2850
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$InboxStyle;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 2848
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 2851
    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 6

    .prologue
    .line 2853
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$InboxStyle;
    move-object v1, p1

    .local v1, "builder":Landroidx/core/app/NotificationCompat$Builder;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 2848
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 2854
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$InboxStyle;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 2855
    return-void
.end method


# virtual methods
.method public addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;
    .locals 4

    .prologue
    .line 2879
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$InboxStyle;
    move-object v1, p1

    .local v1, "cs":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 2880
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$InboxStyle;
    return-object v0
.end method

.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 9
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2889
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$InboxStyle;
    move-object v1, p1

    .local v1, "builder":Landroidx/core/app/NotificationBuilderWithBuilderAccessor;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_1

    .line 2890
    new-instance v5, Landroid/app/Notification$InboxStyle;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    .line 2891
    invoke-interface {v7}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$InboxStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 2892
    invoke-virtual {v5, v6}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v5

    move-object v2, v5

    .line 2893
    .local v2, "style":Landroid/app/Notification$InboxStyle;
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/core/app/NotificationCompat$InboxStyle;->mSummaryTextSet:Z

    if-eqz v5, :cond_0

    .line 2894
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$InboxStyle;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v5

    .line 2896
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    move-object v4, v5

    .line 2897
    .local v4, "text":Ljava/lang/CharSequence;
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v5

    .line 2898
    goto :goto_0

    .line 2900
    .end local v2    # "style":Landroid/app/Notification$InboxStyle;
    .end local v4    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;
    .locals 4

    .prologue
    .line 2862
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$InboxStyle;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$InboxStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 2863
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$InboxStyle;
    return-object v0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;
    .locals 4

    .prologue
    .line 2870
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$InboxStyle;
    move-object v1, p1

    .local v1, "cs":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$InboxStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 2871
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/core/app/NotificationCompat$InboxStyle;->mSummaryTextSet:Z

    .line 2872
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$InboxStyle;
    return-object v0
.end method
