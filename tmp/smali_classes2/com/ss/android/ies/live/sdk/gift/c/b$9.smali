.class public Lcom/ss/android/ies/live/sdk/gift/c/b$9;
.super Ljava/lang/Object;
.source "GiftDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ies/live/sdk/gift/c/b;->a(Lcom/ss/android/ugc/live/core/model/live/Banner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic b:Lcom/ss/android/ugc/live/core/model/live/Banner;

.field final synthetic c:Lcom/ss/android/ies/live/sdk/gift/c/b;


# direct methods
.method constructor <init>(Lcom/ss/android/ies/live/sdk/gift/c/b;Lcom/ss/android/ugc/live/core/model/live/Banner;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lcom/ss/android/ies/live/sdk/gift/c/b$9;->c:Lcom/ss/android/ies/live/sdk/gift/c/b;

    iput-object p2, p0, Lcom/ss/android/ies/live/sdk/gift/c/b$9;->b:Lcom/ss/android/ugc/live/core/model/live/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/16 v4, 0x15b8

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p1, v0, v3

    sget-object v2, Lcom/ss/android/ies/live/sdk/gift/c/b$9;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v7, [Ljava/lang/Class;

    const-class v1, Landroid/view/View;

    aput-object v1, v5, v3

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p1, v0, v3

    sget-object v2, Lcom/ss/android/ies/live/sdk/gift/c/b$9;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v7, [Ljava/lang/Class;

    const-class v1, Landroid/view/View;

    aput-object v1, v5, v3

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    iget-object v0, p0, Lcom/ss/android/ies/live/sdk/gift/c/b$9;->b:Lcom/ss/android/ugc/live/core/model/live/Banner;

    invoke-virtual {v0}, Lcom/ss/android/ugc/live/core/model/live/Banner;->getSchemaUrl()Ljava/lang/String;

    move-result-object v0

    .line 823
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/ss/android/ies/live/sdk/gift/c/b$9;->c:Lcom/ss/android/ies/live/sdk/gift/c/b;

    invoke-static {v0}, Lcom/ss/android/ies/live/sdk/gift/c/b;->b(Lcom/ss/android/ies/live/sdk/gift/c/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ies/live/sdk/gift/c/b$9;->b:Lcom/ss/android/ugc/live/core/model/live/Banner;

    invoke-static {v0, v1}, Lcom/ss/android/ies/live/sdk/chatroom/f/a;->a(Landroid/content/Context;Lcom/ss/android/ugc/live/core/model/live/Banner;)V

    .line 827
    invoke-static {}, Lcom/ss/android/ies/live/sdk/a/a/d;->a()Lcom/ss/android/ies/live/sdk/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/ies/live/sdk/a/a/d;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/live/core/model/live/Room;

    .line 828
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 830
    :try_start_0
    const-string v2, "request_id"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ss/android/ugc/live/core/model/live/Room;->getRequestId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v8, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 831
    const-string v2, "source"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ss/android/ugc/live/core/model/live/Room;->getUserFrom()J

    move-result-wide v0

    :goto_2
    invoke-virtual {v8, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 832
    const-string v0, "banner_id"

    iget-object v1, p0, Lcom/ss/android/ies/live/sdk/gift/c/b$9;->b:Lcom/ss/android/ugc/live/core/model/live/Banner;

    invoke-virtual {v1}, Lcom/ss/android/ugc/live/core/model/live/Banner;->getId()J

    move-result-wide v2

    invoke-virtual {v8, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 833
    invoke-static {}, Lcom/ss/android/ugc/live/core/b;->a()Lcom/ss/android/ugc/live/core/c/a;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ies/live/sdk/d/a;

    invoke-interface {v0}, Lcom/ss/android/ies/live/sdk/d/a;->k()Lcom/ss/android/ugc/live/core/depend/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ies/live/sdk/gift/c/b$9;->c:Lcom/ss/android/ies/live/sdk/gift/c/b;

    invoke-static {v1}, Lcom/ss/android/ies/live/sdk/gift/c/b;->b(Lcom/ss/android/ies/live/sdk/gift/c/b;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "click_gift_bottom_banner"

    const-string v3, "left_banner"

    .line 834
    invoke-static {}, Lcom/ss/android/ugc/live/core/b;->a()Lcom/ss/android/ugc/live/core/c/a;

    move-result-object v4

    check-cast v4, Lcom/ss/android/ies/live/sdk/d/a;

    invoke-interface {v4}, Lcom/ss/android/ies/live/sdk/d/a;->u()Lcom/ss/android/ugc/live/core/depend/o/i;

    move-result-object v4

    invoke-interface {v4}, Lcom/ss/android/ugc/live/core/depend/o/i;->t()J

    move-result-wide v4

    iget-object v6, p0, Lcom/ss/android/ies/live/sdk/gift/c/b$9;->c:Lcom/ss/android/ies/live/sdk/gift/c/b;

    invoke-static {v6}, Lcom/ss/android/ies/live/sdk/gift/c/b;->g(Lcom/ss/android/ies/live/sdk/gift/c/b;)J

    move-result-wide v6

    .line 833
    invoke-interface/range {v0 .. v8}, Lcom/ss/android/ugc/live/core/depend/i/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 835
    :catch_0
    move-exception v0

    goto :goto_0

    .line 830
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 831
    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_2
.end method
