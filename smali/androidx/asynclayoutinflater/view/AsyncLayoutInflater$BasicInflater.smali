.class Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;
.super Landroid/view/LayoutInflater;
.source "AsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BasicInflater"
.end annotation


# static fields
.field private static final sClassPrefixList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 127
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "android.widget."

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "android.webkit."

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "android.app."

    aput-object v3, v1, v2

    sput-object v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;->sClassPrefixList:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    .line 135
    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 6

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;
    move-object v1, p1

    .local v1, "newContext":Landroid/content/Context;
    new-instance v2, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;
    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    sget-object v8, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;->sClassPrefixList:[Ljava/lang/String;

    move-object v3, v8

    move-object v8, v3

    array-length v8, v8

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_1

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 146
    .local v6, "prefix":Ljava/lang/String;
    move-object v8, v0

    move-object v9, v1

    move-object v10, v6

    move-object v11, v2

    :try_start_0
    invoke-virtual {v8, v9, v10, v11}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v7, v8

    .line 147
    .local v7, "view":Landroid/view/View;
    move-object v8, v7

    if-eqz v8, :cond_0

    .line 148
    move-object v8, v7

    move-object v0, v8

    .line 156
    .end local v0    # "this":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v7    # "view":Landroid/view/View;
    :goto_1
    return-object v0

    .line 153
    .line 144
    .restart local v0    # "this":Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;
    .restart local v6    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v8

    move-object v7, v8

    goto :goto_2

    .line 156
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_1
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    goto :goto_1
.end method
