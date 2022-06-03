.class public final Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$MessagingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field static final KEY_DATA_MIME_TYPE:Ljava/lang/String; = "type"

.field static final KEY_DATA_URI:Ljava/lang/String; = "uri"

.field static final KEY_EXTRAS_BUNDLE:Ljava/lang/String; = "extras"

.field static final KEY_NOTIFICATION_PERSON:Ljava/lang/String; = "sender_person"

.field static final KEY_PERSON:Ljava/lang/String; = "person"

.field static final KEY_SENDER:Ljava/lang/String; = "sender"

.field static final KEY_TEXT:Ljava/lang/String; = "text"

.field static final KEY_TIMESTAMP:Ljava/lang/String; = "time"


# instance fields
.field private mDataMimeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDataUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mExtras:Landroid/os/Bundle;

.field private final mPerson:Landroidx/core/app/Person;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mText:Ljava/lang/CharSequence;

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V
    .locals 10
    .param p4    # Landroidx/core/app/Person;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2614
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-wide v2, p2

    .local v2, "timestamp":J
    move-object v4, p4

    .local v4, "person":Landroidx/core/app/Person;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 2599
    move-object v5, v0

    new-instance v6, Landroid/os/Bundle;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v6, v5, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    .line 2615
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    .line 2616
    move-object v5, v0

    move-wide v6, v2

    iput-wide v6, v5, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    .line 2617
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    .line 2618
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2635
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-wide v2, p2

    .local v2, "timestamp":J
    move-object/from16 v4, p4

    .local v4, "sender":Ljava/lang/CharSequence;
    move-object v5, v0

    move-object v6, v1

    move-wide v7, v2

    new-instance v9, Landroidx/core/app/Person$Builder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Landroidx/core/app/Person$Builder;-><init>()V

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    .line 2636
    return-void
.end method

.method static getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 2757
    move-object v0, p0

    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationCompat$MessagingStyle$Message;>;"
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Bundle;

    move-object v1, v4

    .line 2758
    .local v1, "bundles":[Landroid/os/Bundle;
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v2, v4

    .line 2759
    .local v2, "N":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 2760
    move-object v4, v1

    move v5, v3

    move-object v6, v0

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    invoke-direct {v6}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2759
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2762
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationCompat$MessagingStyle$Message;>;"
    return-object v0
.end method

.method static getMessageFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2782
    move-object v0, p0

    .local v0, "bundle":Landroid/os/Bundle;
    move-object v3, v0

    :try_start_0
    const-string/jumbo v4, "text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    const-string/jumbo v4, "time"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2783
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 2817
    .end local v0    # "bundle":Landroid/os/Bundle;
    .local v1, "person":Landroidx/core/app/Person;
    .local v2, "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    :goto_0
    return-object v0

    .line 2786
    .end local v1    # "person":Landroidx/core/app/Person;
    .end local v2    # "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const/4 v3, 0x0

    move-object v1, v3

    .line 2787
    .restart local v1    # "person":Landroidx/core/app/Person;
    move-object v3, v0

    const-string/jumbo v4, "person"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2789
    move-object v3, v0

    const-string/jumbo v4, "person"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/app/Person;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/Person;

    move-result-object v3

    move-object v1, v3

    .line 2802
    :cond_2
    :goto_1
    new-instance v3, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    const-string/jumbo v6, "text"

    .line 2803
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v6, v0

    const-string/jumbo v7, "time"

    .line 2804
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object v8, v1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    move-object v2, v3

    .line 2807
    .restart local v2    # "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    move-object v3, v0

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    const-string/jumbo v4, "uri"

    .line 2808
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2809
    move-object v3, v2

    move-object v4, v0

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    const-string/jumbo v6, "uri"

    .line 2810
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 2809
    invoke-virtual {v3, v4, v5}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v3

    .line 2812
    :cond_3
    move-object v3, v0

    const-string/jumbo v4, "extras"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2813
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    move-object v4, v0

    const-string/jumbo v5, "extras"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2815
    :cond_4
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 2790
    .end local v2    # "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    :cond_5
    move-object v3, v0

    const-string/jumbo v4, "sender_person"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_6

    .line 2793
    move-object v3, v0

    const-string/jumbo v4, "sender_person"

    .line 2794
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    .line 2793
    invoke-static {v3}, Landroidx/core/app/Person;->fromAndroidPerson(Landroid/app/Person;)Landroidx/core/app/Person;

    move-result-object v3

    move-object v1, v3

    goto/16 :goto_1

    .line 2795
    :cond_6
    move-object v3, v0

    const-string/jumbo v4, "sender"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2797
    new-instance v3, Landroidx/core/app/Person$Builder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Landroidx/core/app/Person$Builder;-><init>()V

    move-object v4, v0

    const-string/jumbo v5, "sender"

    .line 2798
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v3

    .line 2799
    invoke-virtual {v3}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    goto/16 :goto_1

    .line 2816
    .end local v1    # "person":Landroidx/core/app/Person;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 2817
    .local v1, "e":Ljava/lang/ClassCastException;
    const/4 v3, 0x0

    move-object v0, v3

    goto/16 :goto_0
.end method

.method static getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2767
    move-object v0, p0

    .local v0, "bundles":[Landroid/os/Parcelable;
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v4

    .line 2768
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationCompat$MessagingStyle$Message;>;"
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 2769
    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    instance-of v4, v4, Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 2770
    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    check-cast v4, Landroid/os/Bundle;

    invoke-static {v4}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getMessageFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v4

    move-object v3, v4

    .line 2771
    .local v3, "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 2772
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 2768
    .end local v3    # "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2776
    :cond_1
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "bundles":[Landroid/os/Parcelable;
    return-object v0
.end method

.method private toBundle()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 2726
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    new-instance v2, Landroid/os/Bundle;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v1, v2

    .line 2727
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 2728
    move-object v2, v1

    const-string/jumbo v3, "text"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2730
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "time"

    move-object v4, v0

    iget-wide v4, v4, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2731
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    if-eqz v2, :cond_1

    .line 2734
    move-object v2, v1

    const-string/jumbo v3, "sender"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    invoke-virtual {v4}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2737
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_5

    .line 2738
    move-object v2, v1

    const-string/jumbo v3, "sender_person"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    invoke-virtual {v4}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2743
    :cond_1
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2744
    move-object v2, v1

    const-string/jumbo v3, "type"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 2747
    move-object v2, v1

    const-string/jumbo v3, "uri"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2749
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    .line 2750
    move-object v2, v1

    const-string/jumbo v3, "extras"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2752
    :cond_4
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    return-object v0

    .line 2740
    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    :cond_5
    move-object v2, v1

    const-string/jumbo v3, "person"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    invoke-virtual {v4}, Landroidx/core/app/Person;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public getDataMimeType()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2713
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2722
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 2690
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    return-object v0
.end method

.method public getPerson()Landroidx/core/app/Person;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2707
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    return-object v0
.end method

.method public getSender()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2701
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    return-object v0

    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    invoke-virtual {v1}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 2679
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    return-object v0
.end method

.method public getTimestamp()J
    .locals 3

    .prologue
    .line 2684
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    move-object v1, v0

    iget-wide v1, v1, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    move-wide v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    return-wide v0
.end method

.method public setData(Ljava/lang/String;Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .locals 5

    .prologue
    .line 2668
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    move-object v1, p1

    .local v1, "dataMimeType":Ljava/lang/String;
    move-object v2, p2

    .local v2, "dataUri":Landroid/net/Uri;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    .line 2669
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    .line 2670
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    return-object v0
.end method
