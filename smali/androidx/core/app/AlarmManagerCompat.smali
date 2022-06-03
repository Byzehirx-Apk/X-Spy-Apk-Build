.class public final Landroidx/core/app/AlarmManagerCompat;
.super Ljava/lang/Object;
.source "AlarmManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/AlarmManagerCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 230
    return-void
.end method

.method public static setAlarmClock(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 13
    .param p0    # Landroid/app/AlarmManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    move-object v1, p0

    .local v1, "alarmManager":Landroid/app/AlarmManager;
    move-wide v2, p1

    .local v2, "triggerTime":J
    move-object/from16 v4, p3

    .local v4, "showIntent":Landroid/app/PendingIntent;
    move-object/from16 v5, p4

    .local v5, "operation":Landroid/app/PendingIntent;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    .line 60
    move-object v6, v1

    new-instance v7, Landroid/app/AlarmManager$AlarmClockInfo;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-wide v9, v2

    move-object v11, v4

    invoke-direct {v8, v9, v10, v11}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    move-object v6, v1

    const/4 v7, 0x0

    move-wide v8, v2

    move-object v10, v5

    invoke-static {v6, v7, v8, v9, v10}, Landroidx/core/app/AlarmManagerCompat;->setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static setAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 12
    .param p0    # Landroid/app/AlarmManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 117
    move-object v1, p0

    .local v1, "alarmManager":Landroid/app/AlarmManager;
    move v2, p1

    .local v2, "type":I
    move-wide v3, p2

    .local v3, "triggerAtMillis":J
    move-object/from16 v5, p4

    .local v5, "operation":Landroid/app/PendingIntent;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_0

    .line 118
    move-object v6, v1

    move v7, v2

    move-wide v8, v3

    move-object v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    move-object v6, v1

    move v7, v2

    move-wide v8, v3

    move-object v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 12
    .param p0    # Landroid/app/AlarmManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 162
    move-object v1, p0

    .local v1, "alarmManager":Landroid/app/AlarmManager;
    move v2, p1

    .local v2, "type":I
    move-wide v3, p2

    .local v3, "triggerAtMillis":J
    move-object/from16 v5, p4

    .local v5, "operation":Landroid/app/PendingIntent;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_0

    .line 163
    move-object v6, v1

    move v7, v2

    move-wide v8, v3

    move-object v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    move-object v6, v1

    move v7, v2

    move-wide v8, v3

    move-object v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static setExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 12
    .param p0    # Landroid/app/AlarmManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 222
    move-object v1, p0

    .local v1, "alarmManager":Landroid/app/AlarmManager;
    move v2, p1

    .local v2, "type":I
    move-wide v3, p2

    .local v3, "triggerAtMillis":J
    move-object/from16 v5, p4

    .local v5, "operation":Landroid/app/PendingIntent;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_0

    .line 223
    move-object v6, v1

    move v7, v2

    move-wide v8, v3

    move-object v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    move-object v6, v1

    move v7, v2

    move-wide v8, v3

    move-object v10, v5

    invoke-static {v6, v7, v8, v9, v10}, Landroidx/core/app/AlarmManagerCompat;->setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
