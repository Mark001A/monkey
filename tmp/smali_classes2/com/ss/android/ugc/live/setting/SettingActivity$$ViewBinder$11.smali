.class public Lcom/ss/android/ugc/live/setting/SettingActivity$$ViewBinder$11;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SettingActivity$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/live/setting/SettingActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/ss/android/ugc/live/setting/SettingActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic b:Lcom/ss/android/ugc/live/setting/SettingActivity;

.field final synthetic c:Lcom/ss/android/ugc/live/setting/SettingActivity$$ViewBinder;


# direct methods
.method constructor <init>(Lcom/ss/android/ugc/live/setting/SettingActivity$$ViewBinder;Lcom/ss/android/ugc/live/setting/SettingActivity;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/ss/android/ugc/live/setting/SettingActivity$$ViewBinder$11;->c:Lcom/ss/android/ugc/live/setting/SettingActivity$$ViewBinder;

    iput-object p2, p0, Lcom/ss/android/ugc/live/setting/SettingActivity$$ViewBinder$11;->b:Lcom/ss/android/ugc/live/setting/SettingActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/16 v4, 0x396d

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p1, v0, v3

    sget-object v2, Lcom/ss/android/ugc/live/setting/SettingActivity$$ViewBinder$11;->a:Lcom/meituan/robust/ChangeQuickRedirect;

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

    sget-object v2, Lcom/ss/android/ugc/live/setting/SettingActivity$$ViewBinder$11;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v7, [Ljava/lang/Class;

    const-class v1, Landroid/view/View;

    aput-object v1, v5, v3

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/ss/android/ugc/live/setting/SettingActivity$$ViewBinder$11;->b:Lcom/ss/android/ugc/live/setting/SettingActivity;

    invoke-virtual {v0}, Lcom/ss/android/ugc/live/setting/SettingActivity;->setCover()V

    goto :goto_0
.end method
