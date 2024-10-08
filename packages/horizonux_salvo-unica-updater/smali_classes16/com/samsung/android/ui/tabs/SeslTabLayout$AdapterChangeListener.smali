.class Lcom/samsung/android/ui/tabs/SeslTabLayout$AdapterChangeListener;
.super Ljava/lang/Object;
.source "SeslTabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/SeslViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/tabs/SeslTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterChangeListener"
.end annotation


# instance fields
.field public autoRefresh:Z

.field final synthetic this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/tabs/SeslTabLayout;)V
    .locals 0

    .line 1359
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$AdapterChangeListener;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1360
    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroidx/viewpager/widget/SeslViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 2
    .param p1, "var1"    # Landroidx/viewpager/widget/SeslViewPager;
    .param p2, "var2"    # Landroidx/viewpager/widget/PagerAdapter;
    .param p3, "var3"    # Landroidx/viewpager/widget/PagerAdapter;

    .line 1363
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$AdapterChangeListener;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 1364
    .local v0, "var4":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    iget-object v1, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->viewPager:Landroidx/viewpager/widget/SeslViewPager;

    if-ne v1, p1, :cond_0

    .line 1365
    iget-boolean v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$AdapterChangeListener;->autoRefresh:Z

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1368
    :cond_0
    return-void
.end method

.method public setAutoRefresh(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 1371
    iput-boolean p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$AdapterChangeListener;->autoRefresh:Z

    .line 1372
    return-void
.end method
