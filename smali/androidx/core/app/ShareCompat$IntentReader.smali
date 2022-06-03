.class public Landroidx/core/app/ShareCompat$IntentReader;
.super Ljava/lang/Object;
.source "ShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentReader"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentReader"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallingActivity:Landroid/content/ComponentName;

.field private mCallingPackage:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 611
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentReader;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 612
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    .line 613
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    .line 614
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/app/ShareCompat;->getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    .line 615
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/app/ShareCompat;->getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    .line 616
    return-void
.end method

.method public static from(Landroid/app/Activity;)Landroidx/core/app/ShareCompat$IntentReader;
    .locals 5

    .prologue
    .line 608
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroidx/core/app/ShareCompat$IntentReader;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/app/ShareCompat$IntentReader;-><init>(Landroid/app/Activity;)V

    move-object v0, v1

    .end local v0    # "activity":Landroid/app/Activity;
    return-object v0
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .locals 10

    .prologue
    .line 705
    move-object v0, p0

    .local v0, "out":Ljava/lang/StringBuilder;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "end":I
    move v6, v2

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_7

    .line 706
    move-object v6, v1

    move v7, v4

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v5, v6

    .line 708
    .local v5, "c":C
    move v6, v5

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_0

    .line 709
    move-object v6, v0

    const-string/jumbo v7, "&lt;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 705
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 710
    :cond_0
    move v6, v5

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_1

    .line 711
    move-object v6, v0

    const-string/jumbo v7, "&gt;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_1

    .line 712
    :cond_1
    move v6, v5

    const/16 v7, 0x26

    if-ne v6, v7, :cond_2

    .line 713
    move-object v6, v0

    const-string/jumbo v7, "&amp;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_1

    .line 714
    :cond_2
    move v6, v5

    const/16 v7, 0x7e

    if-gt v6, v7, :cond_3

    move v6, v5

    const/16 v7, 0x20

    if-ge v6, v7, :cond_4

    .line 715
    :cond_3
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "&#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_1

    .line 716
    :cond_4
    move v6, v5

    const/16 v7, 0x20

    if-ne v6, v7, :cond_6

    .line 717
    :goto_2
    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v7, v3

    if-ge v6, v7, :cond_5

    move-object v6, v1

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_5

    .line 718
    move-object v6, v0

    const-string/jumbo v7, "&nbsp;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 719
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 722
    :cond_5
    move-object v6, v0

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_1

    .line 724
    :cond_6
    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_1

    .line 727
    .end local v5    # "c":C
    :cond_7
    return-void
.end method


# virtual methods
.method public getCallingActivity()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 855
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentReader;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    return-object v0
.end method

.method public getCallingActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentReader;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 877
    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v0

    .line 871
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v1, v3

    .line 873
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    move-object v3, v1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/core/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 874
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 875
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "IntentReader"

    const-string/jumbo v4, "Could not retrieve icon for calling activity"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 877
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getCallingApplicationIcon()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 891
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentReader;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 899
    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v0

    .line 893
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v1, v3

    .line 895
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    move-object v3, v1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 896
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 897
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "IntentReader"

    const-string/jumbo v4, "Could not retrieve icon for calling application"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 899
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getCallingApplicationLabel()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 913
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentReader;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 921
    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v0

    .line 915
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v1, v3

    .line 917
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    move-object v3, v1

    move-object v4, v1

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 918
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 919
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "IntentReader"

    const-string/jumbo v4, "Could not retrieve label for calling application"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 921
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 838
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentReader;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    return-object v0
.end method

.method public getEmailBcc()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 811
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentReader;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.BCC"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    return-object v0
.end method

.method public getEmailCc()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 801
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentReader;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.CC"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    return-object v0
.end method

.method public getEmailTo()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 791
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentReader;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    return-object v0
.end method

.method public getHtmlText()Ljava/lang/String;
    .locals 9

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentReader;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.HTML_TEXT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 686
    .local v1, "result":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 687
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/app/ShareCompat$IntentReader;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v2, v4

    .line 688
    .local v2, "text":Ljava/lang/CharSequence;
    move-object v4, v2

    instance-of v4, v4, Landroid/text/Spanned;

    if-eqz v4, :cond_1

    .line 689
    move-object v4, v2

    check-cast v4, Landroid/text/Spanned;

    invoke-static {v4}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 700
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    return-object v0

    .line 690
    .restart local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    .restart local v2    # "text":Ljava/lang/CharSequence;
    :cond_1
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 691
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    .line 692
    move-object v4, v2

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 694
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v4

    .line 695
    .local v3, "out":Ljava/lang/StringBuilder;
    move-object v4, v3

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v2

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroidx/core/app/ShareCompat$IntentReader;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 696
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method public getStream()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 741
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentReader;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    return-object v0
.end method

.method public getStream(I)Landroid/net/Uri;
    .locals 7

    .prologue
    .line 754
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentReader;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/app/ShareCompat$IntentReader;->isMultipleShare()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 755
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    .line 757
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 758
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object v0, v2

    .line 761
    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    :goto_0
    return-object v0

    .line 760
    .restart local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    :cond_1
    move v2, v1

    if-nez v2, :cond_2

    .line 761
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object v0, v2

    goto :goto_0

    .line 763
    :cond_2
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Stream items available: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/app/ShareCompat$IntentReader;->getStreamCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " index requested: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getStreamCount()I
    .locals 4

    .prologue
    .line 775
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentReader;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/app/ShareCompat$IntentReader;->isMultipleShare()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    .line 778
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 779
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    .line 781
    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSubject()Ljava/lang/String;
    .locals 3

    .prologue
    .line 821
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentReader;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 671
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentReader;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 661
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentReader;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    return-object v0
.end method

.method public isMultipleShare()Z
    .locals 3

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentReader;
    const-string/jumbo v1, "android.intent.action.SEND_MULTIPLE"

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    return v0
.end method

.method public isShareIntent()Z
    .locals 4

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentReader;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 628
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.SEND"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "android.intent.action.SEND_MULTIPLE"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    return v0

    .restart local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSingleShare()Z
    .locals 3

    .prologue
    .line 640
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentReader;
    const-string/jumbo v1, "android.intent.action.SEND"

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentReader;
    return v0
.end method
