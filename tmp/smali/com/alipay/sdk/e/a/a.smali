.class public final Lcom/alipay/sdk/e/a/a;
.super Lcom/alipay/sdk/e/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alipay/sdk/e/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 24
    const-string v0, "cashier"

    const-string v1, "main"

    invoke-static {v0, v1}, Lcom/alipay/sdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method