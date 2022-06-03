.class public Lcom/google/appinventor/components/runtime/util/AlignmentUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 22
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 23
    return-void
.end method


# virtual methods
.method public setHorizontalAlignment(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 42
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Bad value to setHorizontalAlignment: "

    move v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 33
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const v3, 0x800003

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    .line 34
    .line 40
    :goto_0
    return-void

    .line 36
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const v3, 0x800005

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    .line 37
    goto :goto_0

    .line 39
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    .line 40
    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setVerticalAlignment(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Bad value to setVerticalAlignment: "

    move v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    .line 55
    .line 61
    :goto_0
    return-void

    .line 57
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    .line 58
    goto :goto_0

    .line 60
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    .line 61
    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
