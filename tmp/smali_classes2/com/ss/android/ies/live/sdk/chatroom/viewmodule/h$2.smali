.class public Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h$2;
.super Ljava/lang/Object;
.source "PromotionStatusViewModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h;->a(Lcom/ss/android/ies/live/sdk/chatroom/presenter/PromotionStatusPresenter$PromotionStatus;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic b:J

.field final synthetic c:Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h;


# direct methods
.method constructor <init>(Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h;J)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h$2;->c:Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h;

    iput-wide p2, p0, Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/16 v4, 0x1429

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p1, v0, v3

    sget-object v2, Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h$2;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v7, [Ljava/lang/Class;

    const-class v1, Landroid/view/View;

    aput-object v1, v5, v3

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p1, v0, v3

    sget-object v2, Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h$2;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v7, [Ljava/lang/Class;

    const-class v1, Landroid/view/View;

    aput-object v1, v5, v3

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h$2;->c:Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h;

    invoke-static {v0}, Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h;->b(Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h$2;->c:Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h;

    invoke-static {v0}, Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h;->a(Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h$2;->c:Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h;

    iget-wide v2, p0, Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h$2;->b:J

    invoke-static {v0, p1, v2, v3}, Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h;->a(Lcom/ss/android/ies/live/sdk/chatroom/viewmodule/h;Landroid/view/View;J)V

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method