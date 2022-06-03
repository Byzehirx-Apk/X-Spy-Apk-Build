.class public final Landroidx/core/accessibilityservice/AccessibilityServiceInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfoCompat.java"


# static fields
.field public static final CAPABILITY_CAN_FILTER_KEY_EVENTS:I = 0x8

.field public static final CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x4

.field public static final CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION:I = 0x2

.field public static final CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT:I = 0x1

.field public static final FEEDBACK_ALL_MASK:I = -0x1

.field public static final FEEDBACK_BRAILLE:I = 0x20

.field public static final FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x2

.field public static final FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x8

.field public static final FLAG_REQUEST_FILTER_KEY_EVENTS:I = 0x20

.field public static final FLAG_REQUEST_TOUCH_EXPLORATION_MODE:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Landroidx/core/accessibilityservice/AccessibilityServiceInfoCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capabilityToString(I)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 307
    move v0, p0

    .local v0, "capability":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 317
    :pswitch_0
    const-string/jumbo v1, "UNKNOWN"

    move-object v0, v1

    .end local v0    # "capability":I
    :goto_0
    return-object v0

    .line 309
    .restart local v0    # "capability":I
    :pswitch_1
    const-string/jumbo v1, "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT"

    move-object v0, v1

    goto :goto_0

    .line 311
    :pswitch_2
    const-string/jumbo v1, "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION"

    move-object v0, v1

    goto :goto_0

    .line 313
    :pswitch_3
    const-string/jumbo v1, "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    move-object v0, v1

    goto :goto_0

    .line 315
    :pswitch_4
    const-string/jumbo v1, "CAPABILITY_CAN_FILTER_KEY_EVENTS"

    move-object v0, v1

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static feedbackTypeToString(I)Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 215
    move v0, p0

    .local v0, "feedbackType":I
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v3

    .line 216
    .local v1, "builder":Ljava/lang/StringBuilder;
    move-object v3, v1

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 217
    :goto_0
    move v3, v0

    if-lez v3, :cond_1

    .line 218
    const/4 v3, 0x1

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shl-int/2addr v3, v4

    move v2, v3

    .line 219
    .local v2, "feedbackTypeFlag":I
    move v3, v0

    move v4, v2

    const/4 v5, -0x1

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    move v0, v3

    .line 220
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 221
    move-object v3, v1

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 223
    :cond_0
    move v3, v2

    sparse-switch v3, :sswitch_data_0

    .line 240
    :goto_1
    goto :goto_0

    .line 225
    :sswitch_0
    move-object v3, v1

    const-string/jumbo v4, "FEEDBACK_AUDIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 226
    goto :goto_1

    .line 228
    :sswitch_1
    move-object v3, v1

    const-string/jumbo v4, "FEEDBACK_HAPTIC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 229
    goto :goto_1

    .line 231
    :sswitch_2
    move-object v3, v1

    const-string/jumbo v4, "FEEDBACK_GENERIC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 232
    goto :goto_1

    .line 234
    :sswitch_3
    move-object v3, v1

    const-string/jumbo v4, "FEEDBACK_SPOKEN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 235
    goto :goto_1

    .line 237
    :sswitch_4
    move-object v3, v1

    const-string/jumbo v4, "FEEDBACK_VISUAL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_1

    .line 241
    .end local v2    # "feedbackTypeFlag":I
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 242
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "feedbackType":I
    return-object v0

    .line 223
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_4
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public static flagToString(I)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 255
    move v0, p0

    .local v0, "flag":I
    move v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 269
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "flag":I
    :goto_0
    return-object v0

    .line 257
    .restart local v0    # "flag":I
    :sswitch_0
    const-string/jumbo v1, "DEFAULT"

    move-object v0, v1

    goto :goto_0

    .line 259
    :sswitch_1
    const-string/jumbo v1, "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS"

    move-object v0, v1

    goto :goto_0

    .line 261
    :sswitch_2
    const-string/jumbo v1, "FLAG_REQUEST_TOUCH_EXPLORATION_MODE"

    move-object v0, v1

    goto :goto_0

    .line 263
    :sswitch_3
    const-string/jumbo v1, "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    move-object v0, v1

    goto :goto_0

    .line 265
    :sswitch_4
    const-string/jumbo v1, "FLAG_REPORT_VIEW_IDS"

    move-object v0, v1

    goto :goto_0

    .line 267
    :sswitch_5
    const-string/jumbo v1, "FLAG_REQUEST_FILTER_KEY_EVENTS"

    move-object v0, v1

    goto :goto_0

    .line 255
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method public static getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .locals 3
    .param p0    # Landroid/accessibilityservice/AccessibilityServiceInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 287
    move-object v1, v0

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v1

    move v0, v1

    .line 293
    .end local v0    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_0
    return v0

    .line 290
    .restart local v0    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCanRetrieveWindowContent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 293
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static loadDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 4
    .param p0    # Landroid/accessibilityservice/AccessibilityServiceInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/pm/PackageManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    move-object v1, p1

    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 198
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 201
    .end local v0    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_0
    return-object v0

    .restart local v0    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method
