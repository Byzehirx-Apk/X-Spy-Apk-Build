.class Landroidx/core/app/NotificationCompatJellybean;
.super Ljava/lang/Object;
.source "NotificationCompatJellybean.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x10
.end annotation


# static fields
.field static final EXTRA_ALLOW_GENERATED_REPLIES:Ljava/lang/String; = "android.support.allowGeneratedReplies"

.field static final EXTRA_DATA_ONLY_REMOTE_INPUTS:Ljava/lang/String; = "android.support.dataRemoteInputs"

.field private static final KEY_ACTION_INTENT:Ljava/lang/String; = "actionIntent"

.field private static final KEY_ALLOWED_DATA_TYPES:Ljava/lang/String; = "allowedDataTypes"

.field private static final KEY_ALLOW_FREE_FORM_INPUT:Ljava/lang/String; = "allowFreeFormInput"

.field private static final KEY_CHOICES:Ljava/lang/String; = "choices"

.field private static final KEY_DATA_ONLY_REMOTE_INPUTS:Ljava/lang/String; = "dataOnlyRemoteInputs"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_ICON:Ljava/lang/String; = "icon"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_REMOTE_INPUTS:Ljava/lang/String; = "remoteInputs"

.field private static final KEY_RESULT_KEY:Ljava/lang/String; = "resultKey"

.field private static final KEY_SEMANTIC_ACTION:Ljava/lang/String; = "semanticAction"

.field private static final KEY_SHOWS_USER_INTERFACE:Ljava/lang/String; = "showsUserInterface"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final TAG:Ljava/lang/String; = "NotificationCompat"

.field private static sActionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sActionIconField:Ljava/lang/reflect/Field;

.field private static sActionIntentField:Ljava/lang/reflect/Field;

.field private static sActionTitleField:Ljava/lang/reflect/Field;

.field private static sActionsAccessFailed:Z

.field private static sActionsField:Ljava/lang/reflect/Field;

.field private static final sActionsLock:Ljava/lang/Object;

.field private static sExtrasField:Ljava/lang/reflect/Field;

.field private static sExtrasFieldAccessFailed:Z

.field private static final sExtrasLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompatJellybean;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 343
    return-void
.end method

.method public static buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "actionExtrasList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v5, 0x0

    move-object v1, v5

    .line 73
    .local v1, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .local v3, "count":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_2

    .line 74
    move-object v5, v0

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v4, v5

    .line 75
    .local v4, "actionExtras":Landroid/os/Bundle;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 76
    move-object v5, v1

    if-nez v5, :cond_0

    .line 77
    new-instance v5, Landroid/util/SparseArray;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v5

    .line 79
    :cond_0
    move-object v5, v1

    move v6, v2

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v4    # "actionExtras":Landroid/os/Bundle;
    :cond_2
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "actionExtrasList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    return-object v0
.end method

.method private static ensureActionReflectionReadyLocked()Z
    .locals 4

    .prologue
    .line 208
    sget-boolean v1, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    if-eqz v1, :cond_0

    .line 209
    const/4 v1, 0x0

    move v0, v1

    .line 227
    :goto_0
    return v0

    .line 212
    :cond_0
    :try_start_0
    sget-object v1, Landroidx/core/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    .line 213
    const-string/jumbo v1, "android.app.Notification$Action"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/core/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    .line 214
    sget-object v1, Landroidx/core/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    const-string/jumbo v2, "icon"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    .line 215
    sget-object v1, Landroidx/core/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    .line 216
    sget-object v1, Landroidx/core/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    const-string/jumbo v2, "actionIntent"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    .line 217
    const-class v1, Landroid/app/Notification;

    const-string/jumbo v2, "actions"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    .line 218
    sget-object v1, Landroidx/core/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 226
    .line 227
    :cond_1
    :goto_1
    sget-boolean v1, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    move v0, v1

    goto :goto_0

    .line 220
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 221
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v1, "NotificationCompat"

    const-string/jumbo v2, "Unable to access notification actions"

    move-object v3, v0

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 222
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    .line 226
    goto :goto_1

    .line 223
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 224
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v1, "NotificationCompat"

    const-string/jumbo v2, "Unable to access notification actions"

    move-object v3, v0

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 225
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    goto :goto_1

    .line 227
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/core/app/RemoteInput;
    .locals 14

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "data":Landroid/os/Bundle;
    move-object v5, v0

    const-string/jumbo v6, "allowedDataTypes"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v1, v5

    .line 271
    .local v1, "allowedDataTypesAsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object v2, v5

    .line 272
    .local v2, "allowedDataTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 273
    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 274
    .local v4, "type":Ljava/lang/String;
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 275
    goto :goto_0

    .line 277
    .end local v4    # "type":Ljava/lang/String;
    :cond_0
    new-instance v5, Landroidx/core/app/RemoteInput;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    const-string/jumbo v8, "resultKey"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v0

    const-string/jumbo v9, "label"

    .line 278
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    move-object v9, v0

    const-string/jumbo v10, "choices"

    .line 279
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v9

    move-object v10, v0

    const-string/jumbo v11, "allowFreeFormInput"

    .line 280
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    move-object v11, v0

    const-string/jumbo v12, "extras"

    .line 281
    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    move-object v12, v2

    invoke-direct/range {v6 .. v12}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/util/Set;)V

    move-object v0, v5

    .end local v0    # "data":Landroid/os/Bundle;
    return-object v0
.end method

.method private static fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;
    .locals 7

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "bundles":[Landroid/os/Bundle;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 306
    const/4 v3, 0x0

    move-object v0, v3

    .line 312
    .end local v0    # "bundles":[Landroid/os/Bundle;
    .local v1, "remoteInputs":[Landroidx/core/app/RemoteInput;
    .local v2, "i":I
    :goto_0
    return-object v0

    .line 308
    .end local v1    # "remoteInputs":[Landroidx/core/app/RemoteInput;
    .end local v2    # "i":I
    .restart local v0    # "bundles":[Landroid/os/Bundle;
    :cond_0
    move-object v3, v0

    array-length v3, v3

    new-array v3, v3, [Landroidx/core/app/RemoteInput;

    move-object v1, v3

    .line 309
    .restart local v1    # "remoteInputs":[Landroidx/core/app/RemoteInput;
    const/4 v3, 0x0

    move v2, v3

    .restart local v2    # "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 310
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    aget-object v5, v5, v6

    invoke-static {v5}, Landroidx/core/app/NotificationCompatJellybean;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/RemoteInput;

    move-result-object v5

    aput-object v5, v3, v4

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 312
    :cond_1
    move-object v3, v1

    move-object v0, v3

    goto :goto_0
.end method

.method public static getAction(Landroid/app/Notification;I)Landroidx/core/app/NotificationCompat$Action;
    .locals 14

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "notif":Landroid/app/Notification;
    move v1, p1

    .local v1, "actionIndex":I
    sget-object v9, Landroidx/core/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v2, v10

    monitor-enter v9

    .line 166
    move-object v9, v0

    :try_start_0
    invoke-static {v9}, Landroidx/core/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;

    move-result-object v9

    move-object v3, v9

    .line 167
    .local v3, "actionObjects":[Ljava/lang/Object;
    move-object v9, v3

    if-eqz v9, :cond_1

    .line 168
    move-object v9, v3

    move v10, v1

    aget-object v9, v9, v10

    move-object v4, v9

    .line 169
    .local v4, "actionObject":Ljava/lang/Object;
    const/4 v9, 0x0

    move-object v5, v9

    .line 170
    .local v5, "actionExtras":Landroid/os/Bundle;
    move-object v9, v0

    invoke-static {v9}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v9

    move-object v6, v9

    .line 171
    .local v6, "extras":Landroid/os/Bundle;
    move-object v9, v6

    if-eqz v9, :cond_0

    .line 172
    move-object v9, v6

    const-string/jumbo v10, "android.support.actionExtras"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v9

    move-object v7, v9

    .line 174
    .local v7, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    move-object v9, v7

    if-eqz v9, :cond_0

    .line 175
    move-object v9, v7

    move v10, v1

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    move-object v5, v9

    .line 178
    .end local v7    # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    :cond_0
    sget-object v9, Landroidx/core/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    sget-object v10, Landroidx/core/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    move-object v11, v4

    .line 179
    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    sget-object v11, Landroidx/core/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    move-object v12, v4

    .line 180
    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    move-object v12, v5

    .line 178
    invoke-static {v9, v10, v11, v12}, Landroidx/core/app/NotificationCompatJellybean;->readAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    move-object v10, v2

    :try_start_1
    monitor-exit v10

    move-object v0, v9

    .line 188
    .end local v0    # "notif":Landroid/app/Notification;
    .end local v3    # "actionObjects":[Ljava/lang/Object;
    .end local v4    # "actionObject":Ljava/lang/Object;
    .end local v5    # "actionExtras":Landroid/os/Bundle;
    .end local v6    # "extras":Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 186
    .line 187
    .restart local v0    # "notif":Landroid/app/Notification;
    :cond_1
    :goto_1
    move-object v9, v2

    monitor-exit v9

    .line 188
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 183
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 184
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v9, "NotificationCompat"

    const-string/jumbo v10, "Unable to access notification actions"

    move-object v11, v3

    invoke-static {v9, v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v9

    .line 185
    const/4 v9, 0x1

    sput-boolean v9, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    goto :goto_1

    .line 187
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v2

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v8

    throw v9
.end method

.method public static getActionCount(Landroid/app/Notification;)I
    .locals 7

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "notif":Landroid/app/Notification;
    sget-object v4, Landroidx/core/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v1, v5

    monitor-enter v4

    .line 158
    move-object v4, v0

    :try_start_0
    invoke-static {v4}, Landroidx/core/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 159
    .local v2, "actionObjects":[Ljava/lang/Object;
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    array-length v4, v4

    :goto_0
    move-object v5, v1

    monitor-exit v5

    move v0, v4

    .end local v0    # "notif":Landroid/app/Notification;
    return v0

    .restart local v0    # "notif":Landroid/app/Notification;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 160
    .end local v2    # "actionObjects":[Ljava/lang/Object;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method static getActionFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;
    .locals 16

    .prologue
    .line 231
    move-object/from16 v0, p0

    .local v0, "bundle":Landroid/os/Bundle;
    move-object v3, v0

    const-string/jumbo v4, "extras"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object v1, v3

    .line 232
    .local v1, "extras":Landroid/os/Bundle;
    const/4 v3, 0x0

    move v2, v3

    .line 233
    .local v2, "allowGeneratedReplies":Z
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 234
    move-object v3, v1

    const-string/jumbo v4, "android.support.allowGeneratedReplies"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move v2, v3

    .line 236
    :cond_0
    new-instance v3, Landroidx/core/app/NotificationCompat$Action;

    move-object v15, v3

    move-object v3, v15

    move-object v4, v15

    move-object v5, v0

    const-string/jumbo v6, "icon"

    .line 237
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object v6, v0

    const-string/jumbo v7, "title"

    .line 238
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v7, v0

    const-string/jumbo v8, "actionIntent"

    .line 239
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    move-object v8, v0

    const-string/jumbo v9, "extras"

    .line 240
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    move-object v9, v0

    const-string/jumbo v10, "remoteInputs"

    .line 241
    invoke-static {v9, v10}, Landroidx/core/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    move-result-object v9

    move-object v10, v0

    const-string/jumbo v11, "dataOnlyRemoteInputs"

    .line 242
    invoke-static {v10, v11}, Landroidx/core/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v10

    invoke-static {v10}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    move-result-object v10

    move v11, v2

    move-object v12, v0

    const-string/jumbo v13, "semanticAction"

    .line 244
    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    move-object v13, v0

    const-string/jumbo v14, "showsUserInterface"

    .line 245
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-direct/range {v4 .. v13}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZ)V

    move-object v0, v3

    .end local v0    # "bundle":Landroid/os/Bundle;
    return-object v0
.end method

.method private static getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;
    .locals 8

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "notif":Landroid/app/Notification;
    sget-object v4, Landroidx/core/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    monitor-enter v4

    .line 193
    :try_start_0
    invoke-static {}, Landroidx/core/app/NotificationCompatJellybean;->ensureActionReflectionReadyLocked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 194
    const/4 v4, 0x0

    move-object v5, v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 201
    .end local v0    # "notif":Landroid/app/Notification;
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :goto_0
    return-object v0

    .line 197
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "notif":Landroid/app/Notification;
    :cond_0
    :try_start_1
    sget-object v4, Landroidx/core/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v1

    :try_start_2
    monitor-exit v5

    move-object v0, v4

    goto :goto_0

    .line 198
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 199
    .restart local v2    # "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "NotificationCompat"

    const-string/jumbo v5, "Unable to access notification actions"

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 200
    const/4 v4, 0x1

    sput-boolean v4, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    .line 201
    const/4 v4, 0x0

    move-object v5, v1

    monitor-exit v5

    move-object v0, v4

    goto :goto_0

    .line 203
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method private static getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "bundle":Landroid/os/Bundle;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    move-object v2, v4

    .line 333
    .local v2, "array":[Landroid/os/Parcelable;
    move-object v4, v2

    instance-of v4, v4, [Landroid/os/Bundle;

    if-nez v4, :cond_0

    move-object v4, v2

    if-nez v4, :cond_1

    .line 334
    :cond_0
    move-object v4, v2

    check-cast v4, [Landroid/os/Bundle;

    check-cast v4, [Landroid/os/Bundle;

    move-object v0, v4

    .line 339
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 336
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    move-object v4, v2

    move-object v5, v2

    array-length v5, v5

    const-class v6, [Landroid/os/Bundle;

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Bundle;

    move-object v3, v4

    .line 338
    .local v3, "typedArray":[Landroid/os/Bundle;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 339
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method static getBundleForAction(Landroidx/core/app/NotificationCompat$Action;)Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "action":Landroidx/core/app/NotificationCompat$Action;
    new-instance v3, Landroid/os/Bundle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v1, v3

    .line 250
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v3, v1

    const-string/jumbo v4, "icon"

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action;->getIcon()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    move-object v3, v1

    const-string/jumbo v4, "title"

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 252
    move-object v3, v1

    const-string/jumbo v4, "actionIntent"

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 254
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 255
    new-instance v3, Landroid/os/Bundle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v2, v3

    .line 259
    .local v2, "actionExtras":Landroid/os/Bundle;
    :goto_0
    move-object v3, v2

    const-string/jumbo v4, "android.support.allowGeneratedReplies"

    move-object v5, v0

    .line 260
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v5

    .line 259
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 261
    move-object v3, v1

    const-string/jumbo v4, "extras"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 262
    move-object v3, v1

    const-string/jumbo v4, "remoteInputs"

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/app/NotificationCompatJellybean;->toBundleArray([Landroidx/core/app/RemoteInput;)[Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 263
    move-object v3, v1

    const-string/jumbo v4, "showsUserInterface"

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action;->getShowsUserInterface()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    move-object v3, v1

    const-string/jumbo v4, "semanticAction"

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "action":Landroidx/core/app/NotificationCompat$Action;
    return-object v0

    .line 257
    .end local v2    # "actionExtras":Landroid/os/Bundle;
    .restart local v0    # "action":Landroidx/core/app/NotificationCompat$Action;
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .restart local v2    # "actionExtras":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "notif":Landroid/app/Notification;
    sget-object v4, Landroidx/core/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    monitor-enter v4

    .line 91
    :try_start_0
    sget-boolean v4, Landroidx/core/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z

    if-eqz v4, :cond_0

    .line 92
    const/4 v4, 0x0

    move-object v5, v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 117
    .end local v0    # "notif":Landroid/app/Notification;
    :goto_0
    return-object v0

    .line 95
    .restart local v0    # "notif":Landroid/app/Notification;
    :cond_0
    :try_start_1
    sget-object v4, Landroidx/core/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_2

    .line 96
    const-class v4, Landroid/app/Notification;

    const-string/jumbo v5, "extras"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v2, v4

    .line 97
    .local v2, "extrasField":Ljava/lang/reflect/Field;
    const-class v4, Landroid/os/Bundle;

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 98
    const-string/jumbo v4, "NotificationCompat"

    const-string/jumbo v5, "Notification.extras field is not of type Bundle"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 99
    const/4 v4, 0x1

    sput-boolean v4, Landroidx/core/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    const/4 v4, 0x0

    move-object v5, v1

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v4

    goto :goto_0

    .line 102
    :cond_1
    move-object v4, v2

    const/4 v5, 0x1

    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 103
    move-object v4, v2

    sput-object v4, Landroidx/core/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    .line 105
    .end local v2    # "extrasField":Ljava/lang/reflect/Field;
    :cond_2
    sget-object v4, Landroidx/core/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    move-object v2, v4

    .line 106
    .local v2, "extras":Landroid/os/Bundle;
    move-object v4, v2

    if-nez v4, :cond_3

    .line 107
    new-instance v4, Landroid/os/Bundle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v2, v4

    .line 108
    sget-object v4, Landroidx/core/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    :cond_3
    move-object v4, v2

    move-object v5, v1

    :try_start_4
    monitor-exit v5

    move-object v0, v4

    goto :goto_0

    .line 111
    .end local v2    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 112
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "NotificationCompat"

    const-string/jumbo v5, "Unable to access notification extras"

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 115
    .line 116
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    const/4 v4, 0x1

    sput-boolean v4, Landroidx/core/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z

    .line 117
    const/4 v4, 0x0

    move-object v5, v1

    monitor-exit v5

    move-object v0, v4

    goto :goto_0

    .line 113
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 114
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v4, "NotificationCompat"

    const-string/jumbo v5, "Unable to access notification extras"

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_1

    .line 118
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public static readAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;
    .locals 19

    .prologue
    .line 123
    move/from16 v0, p0

    .local v0, "icon":I
    move-object/from16 v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object/from16 v2, p2

    .local v2, "actionIntent":Landroid/app/PendingIntent;
    move-object/from16 v3, p3

    .local v3, "extras":Landroid/os/Bundle;
    const/4 v7, 0x0

    move-object v4, v7

    .line 124
    .local v4, "remoteInputs":[Landroidx/core/app/RemoteInput;
    const/4 v7, 0x0

    move-object v5, v7

    .line 125
    .local v5, "dataOnlyRemoteInputs":[Landroidx/core/app/RemoteInput;
    const/4 v7, 0x0

    move v6, v7

    .line 126
    .local v6, "allowGeneratedReplies":Z
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 127
    move-object v7, v3

    const-string/jumbo v8, "android.support.remoteInputs"

    .line 128
    invoke-static {v7, v8}, Landroidx/core/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v7

    .line 127
    invoke-static {v7}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    move-result-object v7

    move-object v4, v7

    .line 130
    move-object v7, v3

    const-string/jumbo v8, "android.support.dataRemoteInputs"

    .line 131
    invoke-static {v7, v8}, Landroidx/core/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v7

    .line 130
    invoke-static {v7}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    move-result-object v7

    move-object v5, v7

    .line 132
    move-object v7, v3

    const-string/jumbo v8, "android.support.allowGeneratedReplies"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    move v6, v7

    .line 134
    :cond_0
    new-instance v7, Landroidx/core/app/NotificationCompat$Action;

    move-object/from16 v18, v7

    move-object/from16 v7, v18

    move-object/from16 v8, v18

    move v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move v15, v6

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v8 .. v17}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZ)V

    move-object v0, v7

    .end local v0    # "icon":I
    return-object v0
.end method

.method private static toBundle(Landroidx/core/app/RemoteInput;)Landroid/os/Bundle;
    .locals 10

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "remoteInput":Landroidx/core/app/RemoteInput;
    new-instance v6, Landroid/os/Bundle;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v1, v6

    .line 287
    .local v1, "data":Landroid/os/Bundle;
    move-object v6, v1

    const-string/jumbo v7, "resultKey"

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    move-object v6, v1

    const-string/jumbo v7, "label"

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 289
    move-object v6, v1

    const-string/jumbo v7, "choices"

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 290
    move-object v6, v1

    const-string/jumbo v7, "allowFreeFormInput"

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 291
    move-object v6, v1

    const-string/jumbo v7, "extras"

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 293
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v6

    move-object v2, v6

    .line 294
    .local v2, "allowedDataTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v6, v2

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 295
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v6

    .line 296
    .local v3, "allowedDataTypesAsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 297
    .local v5, "type":Ljava/lang/String;
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 298
    goto :goto_0

    .line 299
    .end local v5    # "type":Ljava/lang/String;
    :cond_0
    move-object v6, v1

    const-string/jumbo v7, "allowedDataTypes"

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 301
    .end local v3    # "allowedDataTypesAsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "remoteInput":Landroidx/core/app/RemoteInput;
    return-object v0
.end method

.method private static toBundleArray([Landroidx/core/app/RemoteInput;)[Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "remoteInputs":[Landroidx/core/app/RemoteInput;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 317
    const/4 v3, 0x0

    move-object v0, v3

    .line 323
    .end local v0    # "remoteInputs":[Landroidx/core/app/RemoteInput;
    .local v1, "bundles":[Landroid/os/Bundle;
    .local v2, "i":I
    :goto_0
    return-object v0

    .line 319
    .end local v1    # "bundles":[Landroid/os/Bundle;
    .end local v2    # "i":I
    .restart local v0    # "remoteInputs":[Landroidx/core/app/RemoteInput;
    :cond_0
    move-object v3, v0

    array-length v3, v3

    new-array v3, v3, [Landroid/os/Bundle;

    move-object v1, v3

    .line 320
    .restart local v1    # "bundles":[Landroid/os/Bundle;
    const/4 v3, 0x0

    move v2, v3

    .restart local v2    # "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 321
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    aget-object v5, v5, v6

    invoke-static {v5}, Landroidx/core/app/NotificationCompatJellybean;->toBundle(Landroidx/core/app/RemoteInput;)Landroid/os/Bundle;

    move-result-object v5

    aput-object v5, v3, v4

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 323
    :cond_1
    move-object v3, v1

    move-object v0, v3

    goto :goto_0
.end method

.method public static writeActionAndGetExtras(Landroid/app/Notification$Builder;Landroidx/core/app/NotificationCompat$Action;)Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "builder":Landroid/app/Notification$Builder;
    move-object v1, p1

    .local v1, "action":Landroidx/core/app/NotificationCompat$Action;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Action;->getIcon()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 142
    new-instance v3, Landroid/os/Bundle;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v2, v3

    .line 143
    .local v2, "actionExtras":Landroid/os/Bundle;
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 144
    move-object v3, v2

    const-string/jumbo v4, "android.support.remoteInputs"

    move-object v5, v1

    .line 145
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/app/NotificationCompatJellybean;->toBundleArray([Landroidx/core/app/RemoteInput;)[Landroid/os/Bundle;

    move-result-object v5

    .line 144
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 147
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action;->getDataOnlyRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 148
    move-object v3, v2

    const-string/jumbo v4, "android.support.dataRemoteInputs"

    move-object v5, v1

    .line 149
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action;->getDataOnlyRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/app/NotificationCompatJellybean;->toBundleArray([Landroidx/core/app/RemoteInput;)[Landroid/os/Bundle;

    move-result-object v5

    .line 148
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 151
    :cond_1
    move-object v3, v2

    const-string/jumbo v4, "android.support.allowGeneratedReplies"

    move-object v5, v1

    .line 152
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v5

    .line 151
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "builder":Landroid/app/Notification$Builder;
    return-object v0
.end method
