.class public Landroidx/core/app/NotificationCompat$MessagingStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagingStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    }
.end annotation


# static fields
.field public static final MAXIMUM_RETAINED_MESSAGES:I = 0x19


# instance fields
.field private mConversationTitle:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mIsGroupConversation:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mUser:Landroidx/core/app/Person;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 2174
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 2168
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    .line 2174
    return-void
.end method

.method public constructor <init>(Landroidx/core/app/Person;)V
    .locals 6
    .param p1    # Landroidx/core/app/Person;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2196
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move-object v1, p1

    .local v1, "user":Landroidx/core/app/Person;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 2168
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    .line 2197
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2198
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "User\'s name must not be empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2200
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    .line 2201
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2184
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move-object v1, p1

    .local v1, "userDisplayName":Ljava/lang/CharSequence;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 2168
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    .line 2185
    move-object v2, v0

    new-instance v3, Landroidx/core/app/Person$Builder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/core/app/Person$Builder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    .line 2186
    return-void
.end method

.method public static extractMessagingStyleFromNotification(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2359
    move-object v0, p0

    .local v0, "notification":Landroid/app/Notification;
    move-object v3, v0

    invoke-static {v3}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v3

    move-object v1, v3

    .line 2360
    .local v1, "extras":Landroid/os/Bundle;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    const-string/jumbo v4, "android.selfDisplayName"

    .line 2361
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    const-string/jumbo v4, "android.messagingStyleUser"

    .line 2362
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2363
    const/4 v3, 0x0

    move-object v0, v3

    .line 2371
    .end local v0    # "notification":Landroid/app/Notification;
    :goto_0
    return-object v0

    .line 2367
    .restart local v0    # "notification":Landroid/app/Notification;
    :cond_0
    :try_start_0
    new-instance v3, Landroidx/core/app/NotificationCompat$MessagingStyle;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    move-object v2, v3

    .line 2368
    .local v2, "style":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$MessagingStyle;->restoreFromCompatExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2369
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 2370
    .end local v2    # "style":Landroidx/core/app/NotificationCompat$MessagingStyle;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 2371
    .local v2, "e":Ljava/lang/ClassCastException;
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private findLatestIncomingMessage()Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2481
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    if-ltz v3, :cond_1

    .line 2482
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-object v2, v3

    .line 2484
    .local v2, "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 2485
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2486
    move-object v3, v2

    move-object v0, v3

    .line 2493
    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    .end local v2    # "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    :goto_1
    return-object v0

    .line 2481
    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    .restart local v2    # "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2489
    .end local v2    # "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2491
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-object v0, v3

    goto :goto_1

    .line 2493
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method private hasMessagesWithoutSender()Z
    .locals 5

    .prologue
    .line 2497
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    if-ltz v3, :cond_1

    .line 2498
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-object v2, v3

    .line 2499
    .local v2, "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2500
    const/4 v3, 0x1

    move v0, v3

    .line 2503
    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    .end local v2    # "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    :goto_1
    return v0

    .line 2497
    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    .restart local v2    # "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2503
    .end local v2    # "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method private makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 2532
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move v1, p1

    .local v1, "color":I
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    return-object v0
.end method

.method private makeMessageLine(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;
    .locals 15

    .prologue
    .line 2507
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move-object/from16 v1, p1

    .local v1, "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v9

    move-object v2, v9

    .line 2508
    .local v2, "bidi":Landroidx/core/text/BidiFormatter;
    new-instance v9, Landroid/text/SpannableStringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object v3, v9

    .line 2509
    .local v3, "sb":Landroid/text/SpannableStringBuilder;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_0
    move v4, v9

    .line 2510
    .local v4, "afterLollipop":Z
    move v9, v4

    if-eqz v9, :cond_2

    const/high16 v9, -0x1000000

    :goto_1
    move v5, v9

    .line 2511
    .local v5, "color":I
    move-object v9, v1

    .line 2512
    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v9

    if-nez v9, :cond_3

    const-string/jumbo v9, ""

    :goto_2
    move-object v6, v9

    .line 2513
    .local v6, "replyName":Ljava/lang/CharSequence;
    move-object v9, v6

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2514
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    invoke-virtual {v9}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    move-object v6, v9

    .line 2515
    move v9, v4

    if-eqz v9, :cond_4

    move-object v9, v0

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$MessagingStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v0

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$MessagingStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 2516
    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v9

    :goto_3
    move v5, v9

    .line 2519
    :cond_0
    move-object v9, v2

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v7, v9

    .line 2520
    .local v7, "senderText":Ljava/lang/CharSequence;
    move-object v9, v3

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    .line 2521
    move-object v9, v3

    move-object v10, v0

    move v11, v5

    invoke-direct {v10, v11}, Landroidx/core/app/NotificationCompat$MessagingStyle;->makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;

    move-result-object v10

    move-object v11, v3

    .line 2522
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    move-object v12, v7

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    sub-int/2addr v11, v12

    move-object v12, v3

    .line 2523
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const/16 v13, 0x21

    .line 2521
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2525
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    if-nez v9, :cond_5

    const-string/jumbo v9, ""

    :goto_4
    move-object v8, v9

    .line 2526
    .local v8, "text":Ljava/lang/CharSequence;
    move-object v9, v3

    const-string/jumbo v10, "  "

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    move-object v10, v2

    move-object v11, v8

    invoke-virtual {v10, v11}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    .line 2527
    move-object v9, v3

    move-object v0, v9

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    return-object v0

    .line 2509
    .end local v4    # "afterLollipop":Z
    .end local v5    # "color":I
    .end local v6    # "replyName":Ljava/lang/CharSequence;
    .end local v7    # "senderText":Ljava/lang/CharSequence;
    .end local v8    # "text":Ljava/lang/CharSequence;
    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 2510
    .restart local v4    # "afterLollipop":Z
    :cond_2
    const/4 v9, -0x1

    goto :goto_1

    .line 2512
    .restart local v5    # "color":I
    :cond_3
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_2

    .line 2516
    .restart local v6    # "replyName":Ljava/lang/CharSequence;
    :cond_4
    move v9, v5

    goto :goto_3

    .line 2525
    .restart local v7    # "senderText":Ljava/lang/CharSequence;
    :cond_5
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_4
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 2537
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move-object v1, p1

    .local v1, "extras":Landroid/os/Bundle;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/core/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    .line 2538
    move-object v2, v1

    const-string/jumbo v3, "android.selfDisplayName"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    invoke-virtual {v4}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2539
    move-object v2, v1

    const-string/jumbo v3, "android.messagingStyleUser"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    invoke-virtual {v4}, Landroidx/core/app/Person;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2541
    move-object v2, v1

    const-string/jumbo v3, "android.hiddenConversationTitle"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2542
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2543
    move-object v2, v1

    const-string/jumbo v3, "android.conversationTitle"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2545
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2546
    move-object v2, v1

    const-string/jumbo v3, "android.messages"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    .line 2547
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v4

    .line 2546
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2549
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 2550
    move-object v2, v1

    const-string/jumbo v3, "android.isGroupConversation"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2552
    :cond_2
    return-void
.end method

.method public addMessage(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .locals 4

    .prologue
    .line 2293
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move-object v1, p1

    .local v1, "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 2294
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x19

    if-le v2, v3, :cond_0

    .line 2295
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .line 2297
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    return-object v0
.end method

.method public addMessage(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .locals 14

    .prologue
    .line 2281
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-wide/from16 v2, p2

    .local v2, "timestamp":J
    move-object/from16 v4, p4

    .local v4, "person":Landroidx/core/app/Person;
    move-object v5, v0

    new-instance v6, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    move-wide v9, v2

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    move-result-object v5

    .line 2282
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    return-object v0
.end method

.method public addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2264
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-wide/from16 v2, p2

    .local v2, "timestamp":J
    move-object/from16 v4, p4

    .local v4, "sender":Ljava/lang/CharSequence;
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    new-instance v6, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    move-wide v9, v2

    new-instance v11, Landroidx/core/app/Person$Builder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Landroidx/core/app/Person$Builder;-><init>()V

    move-object v12, v4

    .line 2265
    invoke-virtual {v11, v12}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    .line 2264
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 2266
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x19

    if-le v5, v6, :cond_0

    .line 2267
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    .line 2269
    :cond_0
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    return-object v0
.end method

.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 16
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2385
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move-object/from16 v2, p1

    .local v2, "builder":Landroidx/core/app/NotificationBuilderWithBuilderAccessor;
    move-object v9, v1

    move-object v10, v1

    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$MessagingStyle;->isGroupConversation()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$MessagingStyle;->setGroupConversation(Z)Landroidx/core/app/NotificationCompat$MessagingStyle;

    move-result-object v9

    .line 2387
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x18

    if-lt v9, v10, :cond_a

    .line 2389
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v9, v10, :cond_4

    .line 2390
    new-instance v9, Landroid/app/Notification$MessagingStyle;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v1

    iget-object v11, v11, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    invoke-virtual {v11}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    move-object v3, v9

    .line 2401
    .local v3, "frameworkStyle":Landroid/app/Notification$MessagingStyle;
    :goto_0
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_0

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v9, v10, :cond_1

    .line 2403
    :cond_0
    move-object v9, v3

    move-object v10, v1

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    move-result-object v9

    .line 2408
    :cond_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v9, v10, :cond_2

    .line 2409
    move-object v9, v3

    move-object v10, v1

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$MessagingStyle;->setGroupConversation(Z)Landroid/app/Notification$MessagingStyle;

    move-result-object v9

    .line 2412
    :cond_2
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    :goto_1
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-object v5, v9

    .line 2416
    .local v5, "compatMessage":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v9, v10, :cond_6

    .line 2417
    move-object v9, v5

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v9

    move-object v7, v9

    .line 2418
    .local v7, "compatMessagePerson":Landroidx/core/app/Person;
    new-instance v9, Landroid/app/Notification$MessagingStyle$Message;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v5

    .line 2419
    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    move-object v12, v5

    .line 2420
    invoke-virtual {v12}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getTimestamp()J

    move-result-wide v12

    move-object v14, v7

    if-nez v14, :cond_5

    const/4 v14, 0x0

    .line 2423
    :goto_2
    invoke-direct {v10, v11, v12, v13, v14}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V

    move-object v6, v9

    .line 2433
    .end local v7    # "compatMessagePerson":Landroidx/core/app/Person;
    .local v6, "frameworkMessage":Landroid/app/Notification$MessagingStyle$Message;
    :goto_3
    move-object v9, v5

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 2434
    move-object v9, v6

    move-object v10, v5

    .line 2435
    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v11

    .line 2434
    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v9

    .line 2437
    :cond_3
    move-object v9, v3

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    move-result-object v9

    .line 2438
    goto :goto_1

    .line 2392
    .end local v3    # "frameworkStyle":Landroid/app/Notification$MessagingStyle;
    .end local v5    # "compatMessage":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .end local v6    # "frameworkMessage":Landroid/app/Notification$MessagingStyle$Message;
    :cond_4
    new-instance v9, Landroid/app/Notification$MessagingStyle;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v1

    iget-object v11, v11, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    invoke-virtual {v11}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/Notification$MessagingStyle;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v9

    .restart local v3    # "frameworkStyle":Landroid/app/Notification$MessagingStyle;
    goto/16 :goto_0

    .line 2420
    .restart local v5    # "compatMessage":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .restart local v7    # "compatMessagePerson":Landroidx/core/app/Person;
    :cond_5
    move-object v14, v7

    .line 2423
    invoke-virtual {v14}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    move-result-object v14

    goto :goto_2

    .line 2425
    .end local v7    # "compatMessagePerson":Landroidx/core/app/Person;
    :cond_6
    const/4 v9, 0x0

    move-object v7, v9

    .line 2426
    .local v7, "name":Ljava/lang/CharSequence;
    move-object v9, v5

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 2427
    move-object v9, v5

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    move-object v7, v9

    .line 2429
    :cond_7
    new-instance v9, Landroid/app/Notification$MessagingStyle$Message;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v5

    .line 2430
    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    move-object v12, v5

    invoke-virtual {v12}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getTimestamp()J

    move-result-wide v12

    move-object v14, v7

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    move-object v6, v9

    .restart local v6    # "frameworkMessage":Landroid/app/Notification$MessagingStyle$Message;
    goto :goto_3

    .line 2439
    .end local v5    # "compatMessage":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .end local v6    # "frameworkMessage":Landroid/app/Notification$MessagingStyle$Message;
    .end local v7    # "name":Ljava/lang/CharSequence;
    :cond_8
    move-object v9, v3

    move-object v10, v2

    invoke-interface {v10}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$MessagingStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 2440
    .line 2477
    .end local v3    # "frameworkStyle":Landroid/app/Notification$MessagingStyle;
    :cond_9
    :goto_4
    return-void

    .line 2441
    :cond_a
    move-object v9, v1

    invoke-direct {v9}, Landroidx/core/app/NotificationCompat$MessagingStyle;->findLatestIncomingMessage()Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v9

    move-object v3, v9

    .line 2443
    .local v3, "latestIncomingMessage":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v9, :cond_f

    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 2444
    move-object v9, v2

    invoke-interface {v9}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v1

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 2453
    :cond_b
    :goto_5
    move-object v9, v3

    if-eqz v9, :cond_c

    .line 2454
    move-object v9, v2

    invoke-interface {v9}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v1

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v10, :cond_10

    move-object v10, v1

    move-object v11, v3

    .line 2455
    invoke-direct {v10, v11}, Landroidx/core/app/NotificationCompat$MessagingStyle;->makeMessageLine(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 2454
    :goto_6
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 2459
    :cond_c
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_9

    .line 2460
    new-instance v9, Landroid/text/SpannableStringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object v4, v9

    .line 2461
    .local v4, "completeMessage":Landroid/text/SpannableStringBuilder;
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-nez v9, :cond_d

    move-object v9, v1

    .line 2462
    invoke-direct {v9}, Landroidx/core/app/NotificationCompat$MessagingStyle;->hasMessagesWithoutSender()Z

    move-result v9

    if-eqz v9, :cond_11

    :cond_d
    const/4 v9, 0x1

    :goto_7
    move v5, v9

    .line 2463
    .local v5, "showNames":Z
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v6, v9

    .local v6, "i":I
    :goto_8
    move v9, v6

    if-ltz v9, :cond_13

    .line 2464
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    move v10, v6

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-object v7, v9

    .line 2466
    .local v7, "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    move v9, v5

    if-eqz v9, :cond_12

    move-object v9, v1

    move-object v10, v7

    invoke-direct {v9, v10}, Landroidx/core/app/NotificationCompat$MessagingStyle;->makeMessageLine(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v9

    :goto_9
    move-object v8, v9

    .line 2467
    .local v8, "line":Ljava/lang/CharSequence;
    move v9, v6

    move-object v10, v1

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    if-eq v9, v10, :cond_e

    .line 2468
    move-object v9, v4

    const/4 v10, 0x0

    const-string/jumbo v11, "\n"

    invoke-virtual {v9, v10, v11}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    .line 2470
    :cond_e
    move-object v9, v4

    const/4 v10, 0x0

    move-object v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    .line 2463
    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    .line 2445
    .end local v4    # "completeMessage":Landroid/text/SpannableStringBuilder;
    .end local v5    # "showNames":Z
    .end local v6    # "i":I
    .end local v7    # "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .end local v8    # "line":Ljava/lang/CharSequence;
    :cond_f
    move-object v9, v3

    if-eqz v9, :cond_b

    .line 2446
    move-object v9, v2

    invoke-interface {v9}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 2447
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 2448
    move-object v9, v2

    invoke-interface {v9}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v3

    .line 2449
    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v10

    .line 2448
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    goto/16 :goto_5

    .line 2455
    :cond_10
    move-object v10, v3

    .line 2456
    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_6

    .line 2462
    .restart local v4    # "completeMessage":Landroid/text/SpannableStringBuilder;
    :cond_11
    const/4 v9, 0x0

    goto :goto_7

    .line 2466
    .restart local v5    # "showNames":Z
    .restart local v6    # "i":I
    .restart local v7    # "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    :cond_12
    move-object v9, v7

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_9

    .line 2472
    .end local v7    # "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    :cond_13
    new-instance v9, Landroid/app/Notification$BigTextStyle;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v2

    invoke-interface {v11}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const/4 v10, 0x0

    .line 2473
    invoke-virtual {v9, v10}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    move-object v10, v4

    .line 2474
    invoke-virtual {v9, v10}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    goto/16 :goto_4
.end method

.method public getConversationTitle()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2241
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2304
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    return-object v0
.end method

.method public getUser()Landroidx/core/app/Person;
    .locals 2

    .prologue
    .line 2215
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    return-object v0
.end method

.method public getUserDisplayName()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2210
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    invoke-virtual {v1}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    return-object v0
.end method

.method public isGroupConversation()Z
    .locals 3

    .prologue
    .line 2336
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$MessagingStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$MessagingStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 2337
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 2340
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .line 2344
    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    :goto_1
    return v0

    .line 2340
    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2344
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .locals 8
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2560
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move-object v1, p1

    .local v1, "extras":Landroid/os/Bundle;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2562
    move-object v3, v1

    const-string/jumbo v4, "android.messagingStyleUser"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2564
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "android.messagingStyleUser"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/app/Person;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/Person;

    move-result-object v4

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    .line 2572
    :goto_0
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "android.conversationTitle"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 2573
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    .line 2574
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "android.hiddenConversationTitle"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 2576
    :cond_0
    move-object v3, v1

    const-string/jumbo v4, "android.messages"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    move-object v2, v3

    .line 2577
    .local v2, "parcelables":[Landroid/os/Parcelable;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 2578
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    move-object v4, v2

    invoke-static {v4}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 2580
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "android.isGroupConversation"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2581
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "android.isGroupConversation"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    .line 2583
    :cond_2
    return-void

    .line 2567
    .end local v2    # "parcelables":[Landroid/os/Parcelable;
    :cond_3
    move-object v3, v0

    new-instance v4, Landroidx/core/app/Person$Builder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroidx/core/app/Person$Builder;-><init>()V

    move-object v5, v1

    const-string/jumbo v6, "android.selfDisplayName"

    .line 2568
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v4

    .line 2569
    invoke-virtual {v4}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v4

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    goto :goto_0
.end method

.method public setConversationTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2232
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move-object v1, p1

    .local v1, "conversationTitle":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 2233
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    return-object v0
.end method

.method public setGroupConversation(Z)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .locals 4

    .prologue
    .line 2314
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    move v1, p1

    .local v1, "isGroupConversation":Z
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    .line 2315
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle;
    return-object v0
.end method
