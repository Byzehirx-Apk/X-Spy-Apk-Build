.class public final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;,
        Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;
    }
.end annotation


# static fields
.field private static final LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 86
    new-instance v0, Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 87
    sput-object v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/util/Map;

    const-string/jumbo v1, "black"

    const/high16 v2, -0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/util/Map;

    const-string/jumbo v1, "blue"

    const v2, -0xde690e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/util/Map;

    const-string/jumbo v1, "cyan"

    const v2, -0xff432d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/util/Map;

    const-string/jumbo v1, "darkgray"

    const v2, -0xbbbbbc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/util/Map;

    const-string/jumbo v1, "gray"

    const v2, -0x616162

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/util/Map;

    const-string/jumbo v1, "green"

    const v2, -0xb350b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/util/Map;

    const-string/jumbo v1, "lightgray"

    const v2, -0x333334

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/util/Map;

    const-string/jumbo v1, "pink"

    const v2, -0x17e19d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/util/Map;

    const-string/jumbo v1, "orange"

    const v2, -0x16800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/util/Map;

    const-string/jumbo v1, "pink"

    const v2, -0x17e19d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/util/Map;

    const-string/jumbo v1, "red"

    const v2, -0xcbcca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/util/Map;

    const-string/jumbo v1, "white"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/util/Map;

    const-string/jumbo v1, "yellow"

    const v2, -0x115c5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    new-instance v0, Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 102
    sput-object v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/Map;

    const-string/jumbo v1, "anchorHorizontal"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$1;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/Map;

    const-string/jumbo v1, "anchorVertical"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$8;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$8;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/Map;

    const-string/jumbo v1, "description"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$9;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$9;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/Map;

    const-string/jumbo v1, "draggable"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$10;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$10;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/Map;

    const-string/jumbo v1, "fill"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$11;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$11;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/Map;

    const-string/jumbo v1, "fill-opacity"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$12;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$12;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/Map;

    const-string/jumbo v1, "height"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$13;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$13;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/Map;

    const-string/jumbo v1, "image"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$14;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$14;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 163
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/Map;

    const-string/jumbo v1, "infobox"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$15;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$15;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/Map;

    const-string/jumbo v1, "stroke"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$2;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/Map;

    const-string/jumbo v1, "stroke-opacity"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$3;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 186
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/Map;

    const-string/jumbo v1, "stroke-width"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$4;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/Map;

    const-string/jumbo v1, "title"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$5;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 200
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/Map;

    const-string/jumbo v1, "width"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$6;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$6;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/Map;

    const-string/jumbo v1, "visible"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$7;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/Object;)Z
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 416
    move-object v0, p0

    :goto_0
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 417
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .line 419
    :goto_1
    return v0

    .line 418
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 419
    const-string/jumbo v1, "false"

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1

    .line 420
    :cond_2
    move-object v1, v0

    instance-of v1, v1, Lgnu/lists/FString;

    if-eqz v1, :cond_3

    .line 421
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 423
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private static Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 517
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xfeff

    if-ne v1, v2, :cond_0

    .line 518
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 520
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getGeoJSONFeatures(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 454
    move-object v0, p0

    move-object v1, p1

    new-instance v4, Lorg/json/JSONObject;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 455
    const-string/jumbo v5, "features"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move-object v1, v4

    .line 456
    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 457
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 458
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 457
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 460
    :cond_0
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method

.method public static getGeoJSONType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 464
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/json/JSONObject;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 465
    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    move-object v0, v2

    return-object v0
.end method

.method static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;)F
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 442
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 443
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    move v0, v1

    .line 447
    :goto_0
    return v0

    .line 444
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 445
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    move v0, v1

    goto :goto_0

    .line 446
    :cond_1
    move-object v1, v0

    instance-of v1, v1, Lgnu/lists/FString;

    if-eqz v1, :cond_2

    .line 447
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    move v0, v1

    goto :goto_0

    .line 449
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(C)I
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 267
    move v0, p0

    const/16 v1, 0x30

    move v2, v0

    if-gt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 268
    move v1, v0

    const/16 v2, 0x30

    add-int/lit8 v1, v1, -0x30

    move v0, v1

    .line 272
    :goto_0
    return v0

    .line 269
    :cond_0
    const/16 v1, 0x61

    move v2, v0

    if-gt v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x66

    if-gt v1, v2, :cond_1

    .line 270
    move v1, v0

    const/16 v2, 0x61

    add-int/lit8 v1, v1, -0x61

    const/16 v2, 0xa

    add-int/lit8 v1, v1, 0xa

    move v0, v1

    goto :goto_0

    .line 271
    :cond_1
    const/16 v1, 0x41

    move v2, v0

    if-gt v1, v2, :cond_2

    move v1, v0

    const/16 v2, 0x46

    if-gt v1, v2, :cond_2

    .line 272
    move v1, v0

    const/16 v2, 0x41

    add-int/lit8 v1, v1, -0x41

    const/16 v2, 0xa

    add-int/lit8 v1, v1, 0xa

    move v0, v1

    goto :goto_0

    .line 274
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Invalid hex character. Expected [0-9A-Fa-f]."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;)I
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 429
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 430
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move v0, v1

    .line 434
    :goto_0
    return v0

    .line 431
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 432
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 433
    :cond_1
    move-object v1, v0

    instance-of v1, v1, Lgnu/lists/FString;

    if-eqz v1, :cond_2

    .line 434
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 436
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .locals 14

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    const/4 v7, 0x0

    move-object v3, v7

    .line 313
    const/4 v7, 0x0

    move-object v4, v7

    .line 314
    move-object v7, v2

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/lists/LList;

    invoke-virtual {v7}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v7

    :goto_0
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 315
    check-cast v7, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    .line 316
    move-object v5, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 317
    move-object v7, v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 318
    const-string/jumbo v7, "type"

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 319
    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    move-object v3, v7

    goto :goto_0

    .line 320
    :cond_0
    const-string/jumbo v7, "coordinates"

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 321
    move-object v7, v5

    check-cast v7, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v4, v7

    goto :goto_0

    .line 323
    :cond_1
    move-object v7, v0

    const-string/jumbo v8, "Unsupported field \"%s\" in JSON format"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v6

    aput-object v12, v10, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 325
    goto :goto_0

    .line 326
    :cond_2
    move-object v7, v4

    if-nez v7, :cond_3

    .line 327
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string/jumbo v9, "No coordinates found in GeoJSON Feature"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 329
    :cond_3
    move-object v7, v1

    move-object v8, v3

    move-object v9, v4

    move-object v2, v9

    move-object v1, v8

    move-object v0, v7

    .line 1334
    const-string/jumbo v7, "Point"

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1335
    move-object v7, v0

    move-object v8, v2

    move-object v1, v8

    move-object v0, v7

    .line 1348
    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    .line 1349
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string/jumbo v9, "Invalid coordinate supplied in GeoJSON"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1351
    :cond_4
    new-instance v7, Lcom/google/appinventor/components/runtime/Marker;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/Marker;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    .line 1352
    move-object v0, v8

    move-object v8, v1

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/appinventor/components/runtime/Marker;->Latitude(D)V

    .line 1353
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/appinventor/components/runtime/Marker;->Longitude(D)V

    .line 1354
    move-object v7, v0

    .line 1335
    move-object v0, v7

    .line 1341
    :goto_1
    return-object v0

    .line 1336
    :cond_5
    const-string/jumbo v7, "LineString"

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1337
    move-object v7, v0

    move-object v8, v2

    move-object v1, v8

    move-object v0, v7

    .line 1359
    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_6

    .line 1360
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string/jumbo v9, "Too few coordinates supplied in GeoJSON"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1362
    :cond_6
    new-instance v7, Lcom/google/appinventor/components/runtime/LineString;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/LineString;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    .line 1363
    move-object v0, v8

    move-object v8, v1

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/LineString;->Points(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 1364
    move-object v7, v0

    .line 1337
    move-object v0, v7

    goto :goto_1

    .line 1338
    :cond_7
    const-string/jumbo v7, "Polygon"

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1339
    move-object v7, v0

    move-object v8, v2

    move-object v1, v8

    move-object v0, v7

    .line 1369
    new-instance v7, Lcom/google/appinventor/components/runtime/Polygon;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/Polygon;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    move-object v0, v7

    .line 1370
    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    .line 1371
    move-object v2, v8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1372
    move-object v7, v0

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/Polygon;->Points(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 1373
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1374
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/Pair;

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/LList;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapNestedCoordinates(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v8

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/Polygon;->HolePoints(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 1376
    :cond_8
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Polygon;->Initialize()V

    .line 1377
    move-object v7, v0

    .line 1339
    move-object v0, v7

    goto/16 :goto_1

    .line 1340
    :cond_9
    const-string/jumbo v7, "MultiPolygon"

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1341
    move-object v7, v0

    move-object v8, v2

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_1

    .line 1343
    :cond_a
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .locals 9

    .prologue
    .line 382
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Lcom/google/appinventor/components/runtime/Polygon;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/Polygon;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    move-object v0, v5

    .line 383
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 384
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    .line 385
    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 386
    move-object v1, v6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 387
    :goto_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 388
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v4, v5

    .line 389
    move-object v5, v2

    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 390
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/Pair;

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/LList;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapNestedCoordinates(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 391
    goto :goto_0

    .line 392
    :cond_0
    move-object v5, v0

    move-object v6, v2

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Polygon;->Points(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 393
    move-object v5, v0

    move-object v6, v3

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Polygon;->HolePoints(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 394
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Polygon;->Initialize()V

    .line 395
    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 495
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 496
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 497
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 498
    move-object v4, v6

    instance-of v5, v5, Ljava/lang/Boolean;

    if-nez v5, :cond_0

    move-object v5, v4

    instance-of v5, v5, Ljava/lang/Integer;

    if-nez v5, :cond_0

    move-object v5, v4

    instance-of v5, v5, Ljava/lang/Long;

    if-nez v5, :cond_0

    move-object v5, v4

    instance-of v5, v5, Ljava/lang/Double;

    if-nez v5, :cond_0

    move-object v5, v4

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 503
    :cond_0
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 496
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 504
    :cond_2
    move-object v5, v4

    instance-of v5, v5, Lorg/json/JSONArray;

    if-eqz v5, :cond_3

    .line 505
    move-object v5, v2

    move-object v6, v0

    move-object v7, v4

    check-cast v7, Lorg/json/JSONArray;

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    .line 506
    :cond_3
    move-object v5, v4

    instance-of v5, v5, Lorg/json/JSONObject;

    if-eqz v5, :cond_4

    .line 507
    move-object v5, v2

    move-object v6, v0

    move-object v7, v4

    check-cast v7, Lorg/json/JSONObject;

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    .line 508
    :cond_4
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 509
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "Unrecognized/invalid type in JSON object: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 510
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Unrecognized/invalid type in JSON object"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 513
    :cond_5
    move-object v5, v2

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 470
    move-object v0, p0

    move-object v1, p1

    new-instance v6, Ljava/util/ArrayList;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 472
    move-object v6, v1

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    .line 473
    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 474
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 475
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 476
    move-object v5, v7

    instance-of v6, v6, Ljava/lang/Boolean;

    if-nez v6, :cond_0

    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Integer;

    if-nez v6, :cond_0

    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Long;

    if-nez v6, :cond_0

    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Double;

    if-nez v6, :cond_0

    move-object v6, v5

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 481
    :cond_0
    move-object v6, v2

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v4

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    move-object v10, v5

    aput-object v10, v8, v9

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0

    .line 482
    :cond_1
    move-object v6, v5

    instance-of v6, v6, Lorg/json/JSONArray;

    if-eqz v6, :cond_2

    .line 483
    move-object v6, v2

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v4

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    move-object v10, v0

    move-object v11, v5

    check-cast v11, Lorg/json/JSONArray;

    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0

    .line 484
    :cond_2
    move-object v6, v5

    instance-of v6, v6, Lorg/json/JSONObject;

    if-eqz v6, :cond_3

    .line 485
    move-object v6, v2

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v4

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    move-object v10, v0

    move-object v11, v5

    check-cast v11, Lorg/json/JSONObject;

    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    goto/16 :goto_0

    .line 486
    :cond_3
    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 487
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "Unrecognized/invalid type in JSON object: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 488
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string/jumbo v8, "Unrecognized/invalid type in JSON object"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 490
    :cond_4
    goto/16 :goto_0

    .line 491
    :cond_5
    move-object v6, v2

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 13

    .prologue
    .line 400
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 401
    move-object v3, v7

    instance-of v6, v6, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v6, :cond_1

    .line 402
    move-object v6, v3

    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 403
    move-object v3, v7

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 404
    sget-object v6, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/Map;

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 405
    move-object v5, v7

    if-eqz v6, :cond_0

    .line 406
    move-object v6, v5

    move-object v7, v1

    move-object v8, v3

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;->apply(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Ljava/lang/Object;)V

    goto :goto_0

    .line 408
    :cond_0
    move-object v6, v0

    const-string/jumbo v7, "Ignoring GeoJSON property \"%s\""

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v4

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 411
    :cond_1
    goto :goto_0

    .line 412
    :cond_2
    return-void
.end method

.method public static processGeoJSONFeature(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .locals 16

    .prologue
    .line 280
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v8, 0x0

    move-object v3, v8

    .line 281
    const/4 v8, 0x0

    move-object v4, v8

    .line 282
    const/4 v8, 0x0

    move-object v5, v8

    .line 283
    move-object v8, v2

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/LList;

    invoke-virtual {v8}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v8

    :goto_0
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 284
    check-cast v8, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    .line 285
    move-object v6, v9

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 286
    move-object v8, v6

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 287
    const-string/jumbo v8, "type"

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 288
    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    move-object v3, v8

    goto :goto_0

    .line 289
    :cond_0
    const-string/jumbo v8, "geometry"

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 290
    move-object v8, v6

    check-cast v8, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v4, v8

    goto :goto_0

    .line 291
    :cond_1
    const-string/jumbo v8, "properties"

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 292
    move-object v8, v6

    check-cast v8, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v5, v8

    goto :goto_0

    .line 294
    :cond_2
    move-object v8, v0

    const-string/jumbo v9, "Unsupported field \"%s\" in JSON format"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v7

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 296
    goto :goto_0

    .line 297
    :cond_3
    const-string/jumbo v8, "Feature"

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 298
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const-string/jumbo v10, "Unknown type \"%s\""

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v3

    aput-object v14, v12, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 300
    :cond_4
    move-object v8, v4

    if-nez v8, :cond_5

    .line 301
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const-string/jumbo v10, "No geometry defined for feature."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 303
    :cond_5
    move-object v8, v0

    move-object v9, v1

    move-object v10, v4

    invoke-static {v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-result-object v8

    move-object v2, v8

    .line 304
    move-object v8, v5

    if-eqz v8, :cond_6

    .line 305
    move-object v8, v0

    move-object v9, v2

    move-object v10, v5

    invoke-static {v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 307
    :cond_6
    move-object v8, v2

    move-object v0, v8

    return-object v0
.end method

.method public static swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 9

    .prologue
    .line 790
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 791
    move-object v1, v6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 792
    :goto_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 793
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 794
    move-object v2, v6

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 795
    move-object v5, v2

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/Pair;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 796
    move-object v4, v6

    move-object v6, v2

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/lists/Pair;->setCar(Ljava/lang/Object;)V

    .line 797
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/Pair;

    .line 798
    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/Pair;->setCar(Ljava/lang/Object;)V

    .line 799
    goto :goto_0

    .line 800
    :cond_0
    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method public static swapCoordinates2(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TE;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 804
    move-object v0, p0

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 805
    move-object v2, v5

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 806
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 807
    move-object v4, v2

    const/4 v5, 0x1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 808
    goto :goto_0

    .line 809
    :cond_0
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public static swapNestedCoordinates(Lgnu/lists/LList;)Lgnu/lists/LList;
    .locals 4

    .prologue
    .line 813
    move-object v0, p0

    move-object v2, v0

    move-object v1, v2

    .line 814
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/lists/LList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 815
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgnu/lists/LList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    .line 816
    move-object v2, v1

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/LList;

    move-object v1, v2

    goto :goto_0

    .line 818
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method private static vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;)I
    .locals 9
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    .line 236
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 238
    const/high16 v4, -0x1000000

    move v1, v4

    .line 240
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 241
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(C)I

    move-result v4

    move v2, v4

    .line 242
    move v4, v1

    move v5, v2

    const/4 v6, 0x4

    shl-int/lit8 v5, v5, 0x4

    move v6, v2

    or-int/2addr v5, v6

    const/4 v6, 0x2

    move v7, v3

    rsub-int/lit8 v6, v7, 0x2

    const/4 v7, 0x3

    shl-int/lit8 v6, v6, 0x3

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    move v1, v4

    .line 240
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 262
    :cond_0
    :goto_1
    move v4, v1

    move v0, v4

    return v0

    .line 244
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    .line 246
    const/high16 v4, -0x1000000

    move v1, v4

    .line 248
    const/4 v4, 0x0

    move v3, v4

    :goto_2
    move v4, v3

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    .line 249
    move-object v4, v0

    const/4 v5, 0x2

    move v6, v3

    mul-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(C)I

    move-result v4

    const/4 v5, 0x4

    shl-int/lit8 v4, v4, 0x4

    move-object v5, v0

    const/4 v6, 0x2

    move v7, v3

    mul-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(C)I

    move-result v5

    or-int/2addr v4, v5

    move v2, v4

    .line 250
    move v4, v1

    move v5, v2

    const/4 v6, 0x2

    move v7, v3

    rsub-int/lit8 v6, v7, 0x2

    const/4 v7, 0x3

    shl-int/lit8 v6, v6, 0x3

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    move v1, v4

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    goto :goto_1

    .line 252
    :cond_3
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_5

    .line 255
    const/4 v4, 0x0

    move v3, v4

    :goto_3
    move v4, v3

    const/4 v5, 0x4

    if-ge v4, v5, :cond_4

    .line 256
    move-object v4, v0

    const/4 v5, 0x2

    move v6, v3

    mul-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(C)I

    move-result v4

    const/4 v5, 0x4

    shl-int/lit8 v4, v4, 0x4

    move-object v5, v0

    const/4 v6, 0x2

    move v7, v3

    mul-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(C)I

    move-result v5

    or-int/2addr v4, v5

    move v2, v4

    .line 257
    move v4, v1

    move v5, v2

    const/4 v6, 0x3

    move v7, v3

    rsub-int/lit8 v6, v7, 0x3

    const/4 v7, 0x3

    shl-int/lit8 v6, v6, 0x3

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    move v1, v4

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    goto/16 :goto_1

    .line 260
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4
.end method

.method static wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)I
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 221
    sget-object v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/util/Map;

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 222
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 223
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v0, v2

    .line 229
    :goto_0
    return v0

    .line 224
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 226
    :cond_1
    move-object v2, v0

    const-string/jumbo v3, "&h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    move-object v2, v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 229
    :cond_2
    const v2, -0xcbcca

    move v0, v2

    goto :goto_0
.end method

.method public static writeFeaturesAsGeoJSON(Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 761
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move-object v2, v4

    .line 763
    :try_start_0
    new-instance v4, Ljava/io/PrintStream;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/io/FileOutputStream;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    .line 764
    new-instance v4, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;-><init>(Ljava/io/PrintStream;B)V

    move-object v1, v4

    .line 765
    move-object v4, v2

    const-string/jumbo v5, "{\"type\": \"FeatureCollection\", \"features\":["

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 767
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 768
    move-object v3, v5

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 769
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 770
    move-object v5, v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 771
    :goto_0
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 772
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-object v0, v4

    .line 773
    move-object v4, v2

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(C)V

    .line 774
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 777
    :cond_0
    move-object v4, v2

    const-string/jumbo v5, "]}"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    const-string/jumbo v4, "GeoJSONUtil"

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 780
    return-void

    .line 779
    :catchall_0
    move-exception v4

    move-object v0, v4

    const-string/jumbo v4, "GeoJSONUtil"

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 780
    move-object v4, v0

    throw v4
.end method
