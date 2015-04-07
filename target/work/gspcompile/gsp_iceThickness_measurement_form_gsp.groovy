import ice.thickness.Measurement
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_iceThickness_measurement_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/measurement/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: measurementInstance, field: 'measuringDevice', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("measurement.measuringDevice.label"),'default':("Measuring Device")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("measuringDevice"),'required':(""),'value':(measurementInstance?.measuringDevice)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: measurementInstance, field: 'photo', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("measurement.photo.label"),'default':("Photo")],-1)
printHtmlPart(2)
invokeTag('field','g',19,['type':("url"),'name':("photo"),'required':(""),'value':(measurementInstance?.photo)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: measurementInstance, field: 'measurementData', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("measurement.measurementData.label"),'default':("Measurement Data")],-1)
printHtmlPart(2)
invokeTag('textField','g',28,['name':("measurementData"),'required':(""),'value':(measurementInstance?.measurementData)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: measurementInstance, field: 'estimatedCovered', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("measurement.estimatedCovered.label"),'default':("Estimated Covered")],-1)
printHtmlPart(2)
invokeTag('textField','g',37,['name':("estimatedCovered"),'required':(""),'value':(measurementInstance?.estimatedCovered)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: measurementInstance, field: 'texture', 'error'))
printHtmlPart(7)
invokeTag('message','g',43,['code':("measurement.texture.label"),'default':("Texture")],-1)
printHtmlPart(2)
invokeTag('textField','g',46,['name':("texture"),'required':(""),'value':(measurementInstance?.texture)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: measurementInstance, field: 'accuracy', 'error'))
printHtmlPart(8)
invokeTag('message','g',52,['code':("measurement.accuracy.label"),'default':("Accuracy")],-1)
printHtmlPart(2)
invokeTag('textField','g',55,['name':("accuracy"),'required':(""),'value':(measurementInstance?.accuracy)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: measurementInstance, field: 'additionInfor', 'error'))
printHtmlPart(9)
invokeTag('message','g',61,['code':("measurement.additionInfor.label"),'default':("Addition Infor")],-1)
printHtmlPart(2)
invokeTag('textField','g',64,['name':("additionInfor"),'required':(""),'value':(measurementInstance?.additionInfor)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: measurementInstance, field: 'location', 'error'))
printHtmlPart(10)
invokeTag('message','g',70,['code':("measurement.location.label"),'default':("Location")],-1)
printHtmlPart(2)
invokeTag('textField','g',73,['name':("location"),'required':(""),'value':(measurementInstance?.location)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: measurementInstance, field: 'updateTime', 'error'))
printHtmlPart(11)
invokeTag('message','g',79,['code':("measurement.updateTime.label"),'default':("Update Time")],-1)
printHtmlPart(2)
invokeTag('textField','g',82,['name':("updateTime"),'required':(""),'value':(measurementInstance?.updateTime)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: measurementInstance, field: 'color', 'error'))
printHtmlPart(12)
invokeTag('message','g',88,['code':("measurement.color.label"),'default':("Color")],-1)
printHtmlPart(2)
invokeTag('textField','g',91,['name':("color"),'required':(""),'value':(measurementInstance?.color)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: measurementInstance, field: 'measurementID', 'error'))
printHtmlPart(13)
invokeTag('message','g',97,['code':("measurement.measurementID.label"),'default':("Measurement ID")],-1)
printHtmlPart(2)
invokeTag('textField','g',100,['name':("measurementID"),'required':(""),'value':(measurementInstance?.measurementID)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: measurementInstance, field: 'username', 'error'))
printHtmlPart(14)
invokeTag('message','g',106,['code':("measurement.username.label"),'default':("Username")],-1)
printHtmlPart(2)
invokeTag('select','g',109,['id':("username"),'name':("username.id"),'from':(ice.thickness.User.list()),'optionKey':("id"),'required':(""),'value':(measurementInstance?.username?.id),'class':("many-to-one")],-1)
printHtmlPart(15)
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
