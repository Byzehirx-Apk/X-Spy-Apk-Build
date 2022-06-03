.class public final Lcom/google/appinventor/components/runtime/util/KitkatUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 38
    move-object v2, v0

    invoke-static {v2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 39
    move-object v0, v3

    if-eqz v2, :cond_0

    move-object v2, v0

    array-length v2, v2

    if-ltz v2, :cond_0

    .line 40
    move-object v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    .line 42
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public static getMinHeight(Landroid/widget/TextView;)I
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 67
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getMinHeight()I

    move-result v1

    move v0, v1

    .line 69
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public static getMinWidth(Landroid/widget/TextView;)I
    .locals 3

    .prologue
    .line 52
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 53
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getMinWidth()I

    move-result v1

    move v0, v1

    .line 55
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method
