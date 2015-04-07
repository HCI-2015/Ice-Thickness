import ice.thickness.Measurement
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_iceThickness_measurementshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/measurement/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'measurement.label', default: 'Measurement'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.show.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('message','g',11,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(5)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(6)
invokeTag('message','g',14,['code':("default.home.label")],-1)
printHtmlPart(7)
createTagBody(2, {->
invokeTag('message','g',15,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('link','g',15,['class':("list"),'action':("index")],2)
printHtmlPart(8)
createTagBody(2, {->
invokeTag('message','g',16,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',16,['class':("create"),'action':("create")],2)
printHtmlPart(9)
invokeTag('message','g',20,['code':("default.show.label"),'args':([entityName])],-1)
printHtmlPart(10)
if(true && (flash.message)) {
printHtmlPart(11)
expressionOut.print(flash.message)
printHtmlPart(12)
}
printHtmlPart(13)
if(true && (measurementInstance?.measuringDevice)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("measurement.measuringDevice.label"),'default':("Measuring Device")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',30,['bean':(measurementInstance),'field':("measuringDevice")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (measurementInstance?.photo)) {
printHtmlPart(18)
invokeTag('message','g',37,['code':("measurement.photo.label"),'default':("Photo")],-1)
printHtmlPart(19)
invokeTag('fieldValue','g',39,['bean':(measurementInstance),'field':("photo")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (measurementInstance?.measurementData)) {
printHtmlPart(20)
invokeTag('message','g',46,['code':("measurement.measurementData.label"),'default':("Measurement Data")],-1)
printHtmlPart(21)
invokeTag('fieldValue','g',48,['bean':(measurementInstance),'field':("measurementData")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (measurementInstance?.estimatedCovered)) {
printHtmlPart(22)
invokeTag('message','g',55,['code':("measurement.estimatedCovered.label"),'default':("Estimated Covered")],-1)
printHtmlPart(23)
invokeTag('fieldValue','g',57,['bean':(measurementInstance),'field':("estimatedCovered")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (measurementInstance?.texture)) {
printHtmlPart(24)
invokeTag('message','g',64,['code':("measurement.texture.label"),'default':("Texture")],-1)
printHtmlPart(25)
invokeTag('fieldValue','g',66,['bean':(measurementInstance),'field':("texture")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (measurementInstance?.accuracy)) {
printHtmlPart(26)
invokeTag('message','g',73,['code':("measurement.accuracy.label"),'default':("Accuracy")],-1)
printHtmlPart(27)
invokeTag('fieldValue','g',75,['bean':(measurementInstance),'field':("accuracy")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (measurementInstance?.additionInfor)) {
printHtmlPart(28)
invokeTag('message','g',82,['code':("measurement.additionInfor.label"),'default':("Addition Infor")],-1)
printHtmlPart(29)
invokeTag('fieldValue','g',84,['bean':(measurementInstance),'field':("additionInfor")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (measurementInstance?.location)) {
printHtmlPart(30)
invokeTag('message','g',91,['code':("measurement.location.label"),'default':("Location")],-1)
printHtmlPart(31)
invokeTag('fieldValue','g',93,['bean':(measurementInstance),'field':("location")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (measurementInstance?.updateTime)) {
printHtmlPart(32)
invokeTag('message','g',100,['code':("measurement.updateTime.label"),'default':("Update Time")],-1)
printHtmlPart(33)
invokeTag('fieldValue','g',102,['bean':(measurementInstance),'field':("updateTime")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (measurementInstance?.color)) {
printHtmlPart(34)
invokeTag('message','g',109,['code':("measurement.color.label"),'default':("Color")],-1)
printHtmlPart(35)
invokeTag('fieldValue','g',111,['bean':(measurementInstance),'field':("color")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (measurementInstance?.measurementID)) {
printHtmlPart(36)
invokeTag('message','g',118,['code':("measurement.measurementID.label"),'default':("Measurement ID")],-1)
printHtmlPart(37)
invokeTag('fieldValue','g',120,['bean':(measurementInstance),'field':("measurementID")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (measurementInstance?.username)) {
printHtmlPart(38)
invokeTag('message','g',127,['code':("measurement.username.label"),'default':("Username")],-1)
printHtmlPart(39)
createTagBody(3, {->
expressionOut.print(measurementInstance?.username?.encodeAsHTML())
})
invokeTag('link','g',129,['controller':("user"),'action':("show"),'id':(measurementInstance?.username?.id)],3)
printHtmlPart(16)
}
printHtmlPart(40)
createTagBody(2, {->
printHtmlPart(41)
createTagBody(3, {->
invokeTag('message','g',137,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',137,['class':("edit"),'action':("edit"),'resource':(measurementInstance)],3)
printHtmlPart(42)
invokeTag('actionSubmit','g',138,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(43)
})
invokeTag('form','g',140,['url':([resource:measurementInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(44)
})
invokeTag('captureBody','sitemesh',142,[:],1)
printHtmlPart(45)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1427296776000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
